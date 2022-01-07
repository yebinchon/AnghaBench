
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tc_data {int dev; int regmap; } ;


 int AUX_RX_FILTER_EN ;
 int BGREN ;
 int DP0_AUXCFG1 ;
 int DP0_PLLCTRL ;
 int DP1_PLLCTRL ;
 int DP_PHY_CTRL ;
 int ETIMEDOUT ;
 int PHY_A0_EN ;
 int PHY_RDY ;
 int PWR_SW_EN ;
 int dev_err (int ,char*,...) ;
 int regmap_write (int ,int ,int) ;
 int tc_pllupdate (struct tc_data*,int ) ;
 int tc_poll_timeout (struct tc_data*,int ,int ,int ,int,int) ;
 int tc_set_syspllparam (struct tc_data*) ;

__attribute__((used)) static int tc_aux_link_setup(struct tc_data *tc)
{
 int ret;
 u32 dp0_auxcfg1;


 ret = tc_set_syspllparam(tc);
 if (ret)
  goto err;

 ret = regmap_write(tc->regmap, DP_PHY_CTRL,
      BGREN | PWR_SW_EN | PHY_A0_EN);
 if (ret)
  goto err;




 ret = tc_pllupdate(tc, DP0_PLLCTRL);
 if (ret)
  goto err;

 ret = tc_pllupdate(tc, DP1_PLLCTRL);
 if (ret)
  goto err;

 ret = tc_poll_timeout(tc, DP_PHY_CTRL, PHY_RDY, PHY_RDY, 1, 1000);
 if (ret == -ETIMEDOUT) {
  dev_err(tc->dev, "Timeout waiting for PHY to become ready");
  return ret;
 } else if (ret) {
  goto err;
 }


 dp0_auxcfg1 = AUX_RX_FILTER_EN;
 dp0_auxcfg1 |= 0x06 << 8;
 dp0_auxcfg1 |= 0x3f << 0;

 ret = regmap_write(tc->regmap, DP0_AUXCFG1, dp0_auxcfg1);
 if (ret)
  goto err;

 return 0;
err:
 dev_err(tc->dev, "tc_aux_link_setup failed: %d\n", ret);
 return ret;
}
