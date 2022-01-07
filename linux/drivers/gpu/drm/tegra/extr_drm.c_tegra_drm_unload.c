
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int domain; } ;
struct tegra_drm {scalar_t__ domain; TYPE_1__ carveout; int mm; int mm_lock; } ;
struct host1x_device {int dummy; } ;
struct drm_device {struct tegra_drm* dev_private; int dev; } ;


 int drm_atomic_helper_shutdown (struct drm_device*) ;
 int drm_kms_helper_poll_fini (struct drm_device*) ;
 int drm_mm_takedown (int *) ;
 int drm_mode_config_cleanup (struct drm_device*) ;
 int host1x_device_exit (struct host1x_device*) ;
 int iommu_domain_free (scalar_t__) ;
 int iova_cache_put () ;
 int kfree (struct tegra_drm*) ;
 int mutex_destroy (int *) ;
 int put_iova_domain (int *) ;
 int tegra_drm_fb_exit (struct drm_device*) ;
 struct host1x_device* to_host1x_device (int ) ;

__attribute__((used)) static void tegra_drm_unload(struct drm_device *drm)
{
 struct host1x_device *device = to_host1x_device(drm->dev);
 struct tegra_drm *tegra = drm->dev_private;
 int err;

 drm_kms_helper_poll_fini(drm);
 tegra_drm_fb_exit(drm);
 drm_atomic_helper_shutdown(drm);
 drm_mode_config_cleanup(drm);

 err = host1x_device_exit(device);
 if (err < 0)
  return;

 if (tegra->domain) {
  mutex_destroy(&tegra->mm_lock);
  drm_mm_takedown(&tegra->mm);
  put_iova_domain(&tegra->carveout.domain);
  iova_cache_put();
  iommu_domain_free(tegra->domain);
 }

 kfree(tegra);
}
