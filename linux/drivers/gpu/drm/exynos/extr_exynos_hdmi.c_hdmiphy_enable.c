
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hdmi_context {int powered; int pmureg; int dev; int regul_bulk; } ;


 int ARRAY_SIZE (int ) ;
 int DRM_DEV_DEBUG_KMS (int ,char*) ;
 int HDMI_PHY_CON_0 ;
 int HDMI_PHY_POWER_OFF_EN ;
 int PMU_HDMI_PHY_CONTROL ;
 int PMU_HDMI_PHY_ENABLE_BIT ;
 int hdmi_reg_writemask (struct hdmi_context*,int ,int ,int ) ;
 int hdmi_set_refclk (struct hdmi_context*,int) ;
 int hdmiphy_conf_apply (struct hdmi_context*) ;
 int pm_runtime_get_sync (int ) ;
 int regmap_update_bits (int ,int ,int ,int) ;
 scalar_t__ regulator_bulk_enable (int ,int ) ;
 int supply ;

__attribute__((used)) static void hdmiphy_enable(struct hdmi_context *hdata)
{
 if (hdata->powered)
  return;

 pm_runtime_get_sync(hdata->dev);

 if (regulator_bulk_enable(ARRAY_SIZE(supply), hdata->regul_bulk))
  DRM_DEV_DEBUG_KMS(hdata->dev,
      "failed to enable regulator bulk\n");

 regmap_update_bits(hdata->pmureg, PMU_HDMI_PHY_CONTROL,
   PMU_HDMI_PHY_ENABLE_BIT, 1);

 hdmi_set_refclk(hdata, 1);

 hdmi_reg_writemask(hdata, HDMI_PHY_CON_0, 0, HDMI_PHY_POWER_OFF_EN);

 hdmiphy_conf_apply(hdata);

 hdata->powered = 1;
}
