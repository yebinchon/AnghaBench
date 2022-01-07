
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rcar_hdmi_phy_params {unsigned long mpixelclock; int div; int curr_gmp; int opmode_div; } ;
struct dw_hdmi_plat_data {int dummy; } ;
struct dw_hdmi {int dummy; } ;


 int EINVAL ;
 int RCAR_HDMI_PHY_OPMODE_PLLCFG ;
 int RCAR_HDMI_PHY_PLLCURRGMPCTRL ;
 int RCAR_HDMI_PHY_PLLDIVCTRL ;
 int dw_hdmi_phy_i2c_write (struct dw_hdmi*,int ,int ) ;
 struct rcar_hdmi_phy_params* rcar_hdmi_phy_params ;

__attribute__((used)) static int rcar_hdmi_phy_configure(struct dw_hdmi *hdmi,
       const struct dw_hdmi_plat_data *pdata,
       unsigned long mpixelclock)
{
 const struct rcar_hdmi_phy_params *params = rcar_hdmi_phy_params;

 for (; params->mpixelclock != ~0UL; ++params) {
  if (mpixelclock <= params->mpixelclock)
   break;
 }

 if (params->mpixelclock == ~0UL)
  return -EINVAL;

 dw_hdmi_phy_i2c_write(hdmi, params->opmode_div,
         RCAR_HDMI_PHY_OPMODE_PLLCFG);
 dw_hdmi_phy_i2c_write(hdmi, params->curr_gmp,
         RCAR_HDMI_PHY_PLLCURRGMPCTRL);
 dw_hdmi_phy_i2c_write(hdmi, params->div, RCAR_HDMI_PHY_PLLDIVCTRL);

 return 0;
}
