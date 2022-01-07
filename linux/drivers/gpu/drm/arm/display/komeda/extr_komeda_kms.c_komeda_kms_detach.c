
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct drm_device {int irq_enabled; struct komeda_dev* dev_private; } ;
struct komeda_kms_dev {struct drm_device base; } ;
struct komeda_dev {int dev; TYPE_1__* funcs; } ;
struct TYPE_2__ {int (* disable_irq ) (struct komeda_dev*) ;} ;


 int component_unbind_all (int ,struct drm_device*) ;
 int drm_atomic_helper_shutdown (struct drm_device*) ;
 int drm_dev_put (struct drm_device*) ;
 int drm_dev_unregister (struct drm_device*) ;
 int drm_kms_helper_poll_fini (struct drm_device*) ;
 int drm_mode_config_cleanup (struct drm_device*) ;
 int komeda_kms_cleanup_private_objs (struct komeda_kms_dev*) ;
 int stub1 (struct komeda_dev*) ;

void komeda_kms_detach(struct komeda_kms_dev *kms)
{
 struct drm_device *drm = &kms->base;
 struct komeda_dev *mdev = drm->dev_private;

 drm_dev_unregister(drm);
 drm_kms_helper_poll_fini(drm);
 drm_atomic_helper_shutdown(drm);
 drm->irq_enabled = 0;
 mdev->funcs->disable_irq(mdev);
 component_unbind_all(mdev->dev, drm);
 drm_mode_config_cleanup(drm);
 komeda_kms_cleanup_private_objs(kms);
 drm->dev_private = ((void*)0);
 drm_dev_put(drm);
}
