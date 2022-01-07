
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hdmi_context {int powered; int dev; int regul_bulk; int pmureg; } ;


 int ARRAY_SIZE (int ) ;
 int HDMI_CON_0 ;
 int HDMI_EN ;
 int HDMI_PHY_CON_0 ;
 int HDMI_PHY_POWER_OFF_EN ;
 int PMU_HDMI_PHY_CONTROL ;
 int PMU_HDMI_PHY_ENABLE_BIT ;
 int hdmi_reg_writemask (struct hdmi_context*,int ,int ,int ) ;
 int hdmi_set_refclk (struct hdmi_context*,int) ;
 int pm_runtime_put_sync (int ) ;
 int regmap_update_bits (int ,int ,int ,int ) ;
 int regulator_bulk_disable (int ,int ) ;
 int supply ;

__attribute__((used)) static void hdmiphy_disable(struct hdmi_context *hdata)
{
 if (!hdata->powered)
  return;

 hdmi_reg_writemask(hdata, HDMI_CON_0, 0, HDMI_EN);

 hdmi_reg_writemask(hdata, HDMI_PHY_CON_0, ~0, HDMI_PHY_POWER_OFF_EN);

 hdmi_set_refclk(hdata, 0);

 regmap_update_bits(hdata->pmureg, PMU_HDMI_PHY_CONTROL,
   PMU_HDMI_PHY_ENABLE_BIT, 0);

 regulator_bulk_disable(ARRAY_SIZE(supply), hdata->regul_bulk);

 pm_runtime_put_sync(hdata->dev);

 hdata->powered = 0;
}
