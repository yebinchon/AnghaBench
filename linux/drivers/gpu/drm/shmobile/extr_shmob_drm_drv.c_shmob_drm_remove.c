
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct shmob_drm_device {struct drm_device* ddev; } ;
struct platform_device {int dummy; } ;
struct drm_device {int dummy; } ;


 int drm_dev_put (struct drm_device*) ;
 int drm_dev_unregister (struct drm_device*) ;
 int drm_irq_uninstall (struct drm_device*) ;
 int drm_kms_helper_poll_fini (struct drm_device*) ;
 int drm_mode_config_cleanup (struct drm_device*) ;
 struct shmob_drm_device* platform_get_drvdata (struct platform_device*) ;

__attribute__((used)) static int shmob_drm_remove(struct platform_device *pdev)
{
 struct shmob_drm_device *sdev = platform_get_drvdata(pdev);
 struct drm_device *ddev = sdev->ddev;

 drm_dev_unregister(ddev);
 drm_kms_helper_poll_fini(ddev);
 drm_mode_config_cleanup(ddev);
 drm_irq_uninstall(ddev);
 drm_dev_put(ddev);

 return 0;
}
