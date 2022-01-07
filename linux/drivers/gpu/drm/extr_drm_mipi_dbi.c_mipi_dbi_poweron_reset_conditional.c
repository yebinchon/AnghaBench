
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mipi_dbi {scalar_t__ reset; } ;
struct TYPE_2__ {struct device* dev; } ;
struct mipi_dbi_dev {scalar_t__ regulator; struct mipi_dbi dbi; TYPE_1__ drm; } ;
struct device {int dummy; } ;


 int DRM_DEV_ERROR (struct device*,char*,int) ;
 int MIPI_DCS_SOFT_RESET ;
 int mipi_dbi_command (struct mipi_dbi*,int ) ;
 scalar_t__ mipi_dbi_display_is_on (struct mipi_dbi*) ;
 int mipi_dbi_hw_reset (struct mipi_dbi*) ;
 int msleep (int) ;
 int regulator_disable (scalar_t__) ;
 int regulator_enable (scalar_t__) ;
 int usleep_range (int,int) ;

__attribute__((used)) static int mipi_dbi_poweron_reset_conditional(struct mipi_dbi_dev *dbidev, bool cond)
{
 struct device *dev = dbidev->drm.dev;
 struct mipi_dbi *dbi = &dbidev->dbi;
 int ret;

 if (dbidev->regulator) {
  ret = regulator_enable(dbidev->regulator);
  if (ret) {
   DRM_DEV_ERROR(dev, "Failed to enable regulator (%d)\n", ret);
   return ret;
  }
 }

 if (cond && mipi_dbi_display_is_on(dbi))
  return 1;

 mipi_dbi_hw_reset(dbi);
 ret = mipi_dbi_command(dbi, MIPI_DCS_SOFT_RESET);
 if (ret) {
  DRM_DEV_ERROR(dev, "Failed to send reset command (%d)\n", ret);
  if (dbidev->regulator)
   regulator_disable(dbidev->regulator);
  return ret;
 }






 if (dbi->reset)
  usleep_range(5000, 20000);
 else
  msleep(120);

 return 0;
}
