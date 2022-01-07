
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nouveau_drm {int master; int client; } ;
struct TYPE_2__ {scalar_t__ num_crtc; } ;
struct drm_device {TYPE_1__ mode_config; int dev; } ;


 int kfree (struct nouveau_drm*) ;
 int nouveau_accel_fini (struct nouveau_drm*) ;
 int nouveau_bios_takedown (struct drm_device*) ;
 int nouveau_cli_fini (int *) ;
 int nouveau_debugfs_fini (struct nouveau_drm*) ;
 int nouveau_display_destroy (struct drm_device*) ;
 int nouveau_display_fini (struct drm_device*,int,int) ;
 int nouveau_dmem_fini (struct nouveau_drm*) ;
 struct nouveau_drm* nouveau_drm (struct drm_device*) ;
 int nouveau_fbcon_fini (struct drm_device*) ;
 int nouveau_hwmon_fini (struct drm_device*) ;
 int nouveau_led_fini (struct drm_device*) ;
 scalar_t__ nouveau_pmops_runtime () ;
 int nouveau_svm_fini (struct nouveau_drm*) ;
 int nouveau_ttm_fini (struct nouveau_drm*) ;
 int nouveau_vga_fini (struct nouveau_drm*) ;
 int pm_runtime_forbid (int ) ;
 int pm_runtime_get_sync (int ) ;

__attribute__((used)) static void
nouveau_drm_device_fini(struct drm_device *dev)
{
 struct nouveau_drm *drm = nouveau_drm(dev);

 if (nouveau_pmops_runtime()) {
  pm_runtime_get_sync(dev->dev);
  pm_runtime_forbid(dev->dev);
 }

 nouveau_led_fini(dev);
 nouveau_fbcon_fini(dev);
 nouveau_dmem_fini(drm);
 nouveau_svm_fini(drm);
 nouveau_hwmon_fini(dev);
 nouveau_debugfs_fini(drm);

 if (dev->mode_config.num_crtc)
  nouveau_display_fini(dev, 0, 0);
 nouveau_display_destroy(dev);

 nouveau_accel_fini(drm);
 nouveau_bios_takedown(dev);

 nouveau_ttm_fini(drm);
 nouveau_vga_fini(drm);

 nouveau_cli_fini(&drm->client);
 nouveau_cli_fini(&drm->master);
 kfree(drm);
}
