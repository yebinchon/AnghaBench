
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct hdmi_context {scalar_t__ regs_hdmiphy; int * drv_data; } ;


 scalar_t__ HDMIPHY5433_MODE_SET_DONE ;
 int HDMI_PHY_DISABLE_MODE_SET ;
 int HDMI_PHY_ENABLE_MODE_SET ;
 int exynos5433_hdmi_driver_data ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static void hdmiphy_enable_mode_set(struct hdmi_context *hdata, bool enable)
{
 u8 v = enable ? HDMI_PHY_ENABLE_MODE_SET : HDMI_PHY_DISABLE_MODE_SET;

 if (hdata->drv_data == &exynos5433_hdmi_driver_data)
  writel(v, hdata->regs_hdmiphy + HDMIPHY5433_MODE_SET_DONE);
}
