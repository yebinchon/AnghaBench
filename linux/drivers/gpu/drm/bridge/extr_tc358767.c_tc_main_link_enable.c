
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct TYPE_4__ {int rate; int num_lanes; int capabilities; } ;
struct TYPE_3__ {int assr; int scrambler_dis; TYPE_2__ base; scalar_t__ spread; } ;
struct drm_dp_aux {int dummy; } ;
struct tc_data {int assr; struct device* dev; TYPE_1__ link; int regmap; struct drm_dp_aux aux; } ;
struct device {int dummy; } ;


 int BGREN ;
 int BPC_8 ;
 int DP0CTL ;
 int DP0_LTLOOPCTRL ;
 int DP0_MISC ;
 int DP0_PLLCTRL ;
 int DP0_SNKLTCTRL ;
 int DP0_SRCCTRL ;
 int DP0_SRCCTRL_AUTOCORRECT ;
 int DP0_SRCCTRL_BW27 ;
 int DP0_SRCCTRL_SCRMBLDIS ;
 int DP0_SRCCTRL_SSCG ;
 int DP0_SRCCTRL_TP1 ;
 int DP0_SRCCTRL_TP2 ;
 int DP1_PLLCTRL ;
 int DP1_SRCCTRL ;
 int DP_CHANNEL_EQ_BITS ;
 int DP_DOWNSPREAD_CTRL ;
 int DP_EDP_CONFIGURATION_SET ;
 int DP_EN ;
 int DP_INTERLANE_ALIGN_DONE ;
 int DP_LINK_CAP_ENHANCED_FRAMING ;
 int DP_LINK_SCRAMBLING_DISABLE ;
 int DP_LINK_STATUS_SIZE ;
 int DP_PHY_CTRL ;
 int DP_PHY_RST ;
 int DP_SET_ANSI_8B10B ;
 int DP_SPREAD_AMP_0_5 ;
 int DP_TRAINING_LANE0_SET ;
 int DP_TRAINING_PATTERN_1 ;
 int DP_TRAINING_PATTERN_2 ;
 int DP_TRAINING_PATTERN_SET ;
 int DP_TRAIN_PRE_EMPH_LEVEL_0 ;
 int DP_TRAIN_VOLTAGE_SWING_LEVEL_0 ;
 int EF_EN ;
 int ENODEV ;
 int PHY_2LANE ;
 int PHY_A0_EN ;
 int PHY_M0_EN ;
 int PHY_M0_RST ;
 int PHY_M1_RST ;
 int PHY_RDY ;
 int PWR_SW_EN ;
 scalar_t__ WARN_ON (int) ;
 int dev_dbg (struct device*,char*,...) ;
 int dev_err (struct device*,char*,...) ;
 int drm_dp_dpcd_read_link_status (struct drm_dp_aux*,int*) ;
 int drm_dp_dpcd_readb (struct drm_dp_aux*,int ,int*) ;
 int drm_dp_dpcd_write (struct drm_dp_aux*,int ,int*,int) ;
 int drm_dp_dpcd_writeb (struct drm_dp_aux*,int ,int) ;
 int drm_dp_link_configure (struct drm_dp_aux*,TYPE_2__*) ;
 int regmap_read (int ,int ,int*) ;
 int regmap_update_bits (int ,int ,int ,int ) ;
 int regmap_write (int ,int ,int) ;
 int tc_pllupdate (struct tc_data*,int ) ;
 int tc_poll_timeout (struct tc_data*,int ,int ,int ,int,int) ;
 int tc_set_syspllparam (struct tc_data*) ;
 int tc_srcctrl (struct tc_data*) ;
 int tc_wait_link_training (struct tc_data*) ;
 int* training_pattern1_errors ;
 int* training_pattern2_errors ;
 int usleep_range (int,int) ;

__attribute__((used)) static int tc_main_link_enable(struct tc_data *tc)
{
 struct drm_dp_aux *aux = &tc->aux;
 struct device *dev = tc->dev;
 u32 dp_phy_ctrl;
 u32 value;
 int ret;
 u8 tmp[DP_LINK_STATUS_SIZE];

 dev_dbg(tc->dev, "link enable\n");

 ret = regmap_read(tc->regmap, DP0CTL, &value);
 if (ret)
  return ret;

 if (WARN_ON(value & DP_EN)) {
  ret = regmap_write(tc->regmap, DP0CTL, 0);
  if (ret)
   return ret;
 }

 ret = regmap_write(tc->regmap, DP0_SRCCTRL, tc_srcctrl(tc));
 if (ret)
  return ret;

 ret = regmap_write(tc->regmap, DP1_SRCCTRL,
   (tc->link.spread ? DP0_SRCCTRL_SSCG : 0) |
   ((tc->link.base.rate != 162000) ? DP0_SRCCTRL_BW27 : 0));
 if (ret)
  return ret;

 ret = tc_set_syspllparam(tc);
 if (ret)
  return ret;


 dp_phy_ctrl = BGREN | PWR_SW_EN | PHY_A0_EN | PHY_M0_EN;
 if (tc->link.base.num_lanes == 2)
  dp_phy_ctrl |= PHY_2LANE;

 ret = regmap_write(tc->regmap, DP_PHY_CTRL, dp_phy_ctrl);
 if (ret)
  return ret;


 ret = tc_pllupdate(tc, DP0_PLLCTRL);
 if (ret)
  return ret;

 ret = tc_pllupdate(tc, DP1_PLLCTRL);
 if (ret)
  return ret;


 dp_phy_ctrl |= DP_PHY_RST | PHY_M1_RST | PHY_M0_RST;
 ret = regmap_write(tc->regmap, DP_PHY_CTRL, dp_phy_ctrl);
 usleep_range(100, 200);
 dp_phy_ctrl &= ~(DP_PHY_RST | PHY_M1_RST | PHY_M0_RST);
 ret = regmap_write(tc->regmap, DP_PHY_CTRL, dp_phy_ctrl);

 ret = tc_poll_timeout(tc, DP_PHY_CTRL, PHY_RDY, PHY_RDY, 1, 1000);
 if (ret) {
  dev_err(dev, "timeout waiting for phy become ready");
  return ret;
 }


 ret = regmap_update_bits(tc->regmap, DP0_MISC, BPC_8, BPC_8);
 if (ret)
  return ret;
 if (tc->assr != tc->link.assr) {
  dev_dbg(dev, "Trying to set display to ASSR: %d\n",
   tc->assr);

  tmp[0] = tc->assr;
  ret = drm_dp_dpcd_writeb(aux, DP_EDP_CONFIGURATION_SET, tmp[0]);
  if (ret < 0)
   goto err_dpcd_read;

  ret = drm_dp_dpcd_readb(aux, DP_EDP_CONFIGURATION_SET, tmp);
  if (ret < 0)
   goto err_dpcd_read;

  if (tmp[0] != tc->assr) {
   dev_dbg(dev, "Failed to switch display ASSR to %d, falling back to unscrambled mode\n",
    tc->assr);

   tc->link.scrambler_dis = 1;
  }
 }


 ret = drm_dp_link_configure(aux, &tc->link.base);
 if (ret < 0)
  goto err_dpcd_write;


 tmp[0] = tc->link.spread ? DP_SPREAD_AMP_0_5 : 0x00;

 tmp[1] = DP_SET_ANSI_8B10B;
 ret = drm_dp_dpcd_write(aux, DP_DOWNSPREAD_CTRL, tmp, 2);
 if (ret < 0)
  goto err_dpcd_write;


 tmp[0] = tmp[1] = DP_TRAIN_VOLTAGE_SWING_LEVEL_0 |
     DP_TRAIN_PRE_EMPH_LEVEL_0;
 ret = drm_dp_dpcd_write(aux, DP_TRAINING_LANE0_SET, tmp, 2);
 if (ret < 0)
  goto err_dpcd_write;




 ret = regmap_write(tc->regmap, DP0_SNKLTCTRL,
      DP_LINK_SCRAMBLING_DISABLE |
      DP_TRAINING_PATTERN_1);
 if (ret)
  return ret;

 ret = regmap_write(tc->regmap, DP0_LTLOOPCTRL,
      (15 << 28) |
      (15 << 24) |
      (0xd << 0));
 if (ret)
  return ret;

 ret = regmap_write(tc->regmap, DP0_SRCCTRL,
      tc_srcctrl(tc) | DP0_SRCCTRL_SCRMBLDIS |
      DP0_SRCCTRL_AUTOCORRECT |
      DP0_SRCCTRL_TP1);
 if (ret)
  return ret;


 ret = regmap_write(tc->regmap, DP0CTL,
      ((tc->link.base.capabilities &
        DP_LINK_CAP_ENHANCED_FRAMING) ? EF_EN : 0) |
      DP_EN);
 if (ret)
  return ret;



 ret = tc_wait_link_training(tc);
 if (ret < 0)
  return ret;

 if (ret) {
  dev_err(tc->dev, "Link training phase 1 failed: %s\n",
   training_pattern1_errors[ret]);
  return -ENODEV;
 }




 ret = regmap_write(tc->regmap, DP0_SNKLTCTRL,
      DP_LINK_SCRAMBLING_DISABLE |
      DP_TRAINING_PATTERN_2);
 if (ret)
  return ret;

 ret = regmap_write(tc->regmap, DP0_SRCCTRL,
      tc_srcctrl(tc) | DP0_SRCCTRL_SCRMBLDIS |
      DP0_SRCCTRL_AUTOCORRECT |
      DP0_SRCCTRL_TP2);
 if (ret)
  return ret;


 ret = tc_wait_link_training(tc);
 if (ret < 0)
  return ret;

 if (ret) {
  dev_err(tc->dev, "Link training phase 2 failed: %s\n",
   training_pattern2_errors[ret]);
  return -ENODEV;
 }
 ret = regmap_write(tc->regmap, DP0_SRCCTRL, tc_srcctrl(tc) |
      DP0_SRCCTRL_AUTOCORRECT);
 if (ret)
  return ret;



 tmp[0] = tc->link.scrambler_dis ? DP_LINK_SCRAMBLING_DISABLE : 0x00;
 ret = drm_dp_dpcd_writeb(aux, DP_TRAINING_PATTERN_SET, tmp[0]);
 if (ret < 0)
  goto err_dpcd_write;


 ret = drm_dp_dpcd_read_link_status(aux, tmp);
 if (ret < 0)
  goto err_dpcd_read;

 ret = 0;

 value = tmp[0] & DP_CHANNEL_EQ_BITS;

 if (value != DP_CHANNEL_EQ_BITS) {
  dev_err(tc->dev, "Lane 0 failed: %x\n", value);
  ret = -ENODEV;
 }

 if (tc->link.base.num_lanes == 2) {
  value = (tmp[0] >> 4) & DP_CHANNEL_EQ_BITS;

  if (value != DP_CHANNEL_EQ_BITS) {
   dev_err(tc->dev, "Lane 1 failed: %x\n", value);
   ret = -ENODEV;
  }

  if (!(tmp[2] & DP_INTERLANE_ALIGN_DONE)) {
   dev_err(tc->dev, "Interlane align failed\n");
   ret = -ENODEV;
  }
 }

 if (ret) {
  dev_err(dev, "0x0202 LANE0_1_STATUS:            0x%02x\n", tmp[0]);
  dev_err(dev, "0x0203 LANE2_3_STATUS             0x%02x\n", tmp[1]);
  dev_err(dev, "0x0204 LANE_ALIGN_STATUS_UPDATED: 0x%02x\n", tmp[2]);
  dev_err(dev, "0x0205 SINK_STATUS:               0x%02x\n", tmp[3]);
  dev_err(dev, "0x0206 ADJUST_REQUEST_LANE0_1:    0x%02x\n", tmp[4]);
  dev_err(dev, "0x0207 ADJUST_REQUEST_LANE2_3:    0x%02x\n", tmp[5]);
  return ret;
 }

 return 0;
err_dpcd_read:
 dev_err(tc->dev, "Failed to read DPCD: %d\n", ret);
 return ret;
err_dpcd_write:
 dev_err(tc->dev, "Failed to write DPCD: %d\n", ret);
 return ret;
}
