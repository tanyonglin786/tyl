//
//  HNTHomeCell.m
//  demo
//
//  Created by 东哥 on 2022/4/19.
//

#import "HNTHomeCell.h"

@interface HNTHomeCell ()

@property (weak, nonatomic) IBOutlet UILabel *addLabel;
@property (weak, nonatomic) IBOutlet UILabel *onelineLabel;

@property (weak, nonatomic) IBOutlet UILabel *rewardScaleLabel;

@property (weak, nonatomic) IBOutlet UILabel *nameLabel;


@end

@implementation HNTHomeCell

- (void)awakeFromNib {
    [super awakeFromNib];
//    self.rewardScaleLabel.textColor = UIColor.orangeColor;

}

- (void)setHotspotModel:(HNHotspotInfoModel *)hotspotModel
{
    _hotspotModel = hotspotModel;
    self.addLabel.text = hotspotModel.address;
    self.nameLabel.text = hotspotModel.name;
    self.rewardScaleLabel.text = [NSString stringWithFormat:@"%.2f",hotspotModel.reward_scale];
    self.onelineLabel.text = hotspotModel.model.online;
    if ([self.onelineLabel.text isEqualToString:@"online"]) {
        self.onelineLabel.textColor = [UIColor blueColor];
    }else{
        self.onelineLabel.textColor = [UIColor redColor];
    }
}


- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
