
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct hdmi_context {int dev; } ;


 int DRM_DEV_DEBUG_KMS (int ,char*,int) ;
 int DRM_DEV_ERROR (int ,char*) ;
 int HDMI_PHY_STATUS ;
 int HDMI_PHY_STATUS_READY ;
 int hdmi_reg_read (struct hdmi_context*,int ) ;
 int usleep_range (int,int) ;

__attribute__((used)) static void hdmiphy_wait_for_pll(struct hdmi_context *hdata)
{
 int tries;

 for (tries = 0; tries < 10; ++tries) {
  u32 val = hdmi_reg_read(hdata, HDMI_PHY_STATUS);

  if (val & HDMI_PHY_STATUS_READY) {
   DRM_DEV_DEBUG_KMS(hdata->dev,
       "PLL stabilized after %d tries\n",
       tries);
   return;
  }
  usleep_range(10, 20);
 }

 DRM_DEV_ERROR(hdata->dev, "PLL could not reach steady state\n");
}
