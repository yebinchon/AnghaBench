
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ hactive; scalar_t__ vactive; } ;
struct panel_drv_data {TYPE_1__ vm; } ;
struct omap_dss_device {int dev; } ;
struct drm_display_mode {scalar_t__ hdisplay; scalar_t__ vdisplay; } ;


 int EINVAL ;
 int dev_warn (int ,char*,scalar_t__,scalar_t__) ;
 struct panel_drv_data* to_panel_data (struct omap_dss_device*) ;

__attribute__((used)) static int dsicm_check_timings(struct omap_dss_device *dssdev,
          struct drm_display_mode *mode)
{
 struct panel_drv_data *ddata = to_panel_data(dssdev);
 int ret = 0;

 if (mode->hdisplay != ddata->vm.hactive)
  ret = -EINVAL;

 if (mode->vdisplay != ddata->vm.vactive)
  ret = -EINVAL;

 if (ret) {
  dev_warn(dssdev->dev, "wrong resolution: %d x %d",
    mode->hdisplay, mode->vdisplay);
  dev_warn(dssdev->dev, "panel resolution: %d x %d",
    ddata->vm.hactive, ddata->vm.vactive);
 }

 return ret;
}
