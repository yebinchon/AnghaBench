
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sti_private {int dummy; } ;
struct drm_device {struct sti_private* dev_private; int dev; } ;


 int component_unbind_all (int ,struct drm_device*) ;
 int drm_atomic_helper_shutdown (struct drm_device*) ;
 int drm_kms_helper_poll_fini (struct drm_device*) ;
 int drm_mode_config_cleanup (struct drm_device*) ;
 int kfree (struct sti_private*) ;

__attribute__((used)) static void sti_cleanup(struct drm_device *ddev)
{
 struct sti_private *private = ddev->dev_private;

 drm_kms_helper_poll_fini(ddev);
 drm_atomic_helper_shutdown(ddev);
 drm_mode_config_cleanup(ddev);
 component_unbind_all(ddev->dev, ddev);
 kfree(private);
 ddev->dev_private = ((void*)0);
}
