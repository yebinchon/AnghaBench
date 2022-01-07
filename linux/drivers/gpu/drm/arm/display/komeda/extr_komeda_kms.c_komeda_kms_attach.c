
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct drm_device {int irq_enabled; struct komeda_dev* dev_private; TYPE_1__* driver; int dev; } ;
struct komeda_kms_dev {int n_crtcs; struct drm_device base; } ;
struct komeda_dev {int dev; TYPE_2__* funcs; int irq; } ;
struct TYPE_4__ {int (* enable_irq ) (struct komeda_dev*) ;int (* disable_irq ) (struct komeda_dev*) ;} ;
struct TYPE_3__ {int name; } ;


 int ENOMEM ;
 struct komeda_kms_dev* ERR_PTR (int) ;
 int GFP_KERNEL ;
 int IRQF_SHARED ;
 int component_bind_all (int ,struct komeda_kms_dev*) ;
 int component_unbind_all (int ,struct drm_device*) ;
 int devm_request_irq (int ,int ,int ,int ,int ,struct drm_device*) ;
 int drm_dev_init (struct drm_device*,int *,int ) ;
 int drm_dev_put (struct drm_device*) ;
 int drm_dev_register (struct drm_device*,int ) ;
 int drm_kms_helper_poll_fini (struct drm_device*) ;
 int drm_kms_helper_poll_init (struct drm_device*) ;
 int drm_mode_config_cleanup (struct drm_device*) ;
 int drm_mode_config_reset (struct drm_device*) ;
 int drm_vblank_init (struct drm_device*,int ) ;
 int kfree (struct komeda_kms_dev*) ;
 int komeda_kms_add_crtcs (struct komeda_kms_dev*,struct komeda_dev*) ;
 int komeda_kms_add_planes (struct komeda_kms_dev*,struct komeda_dev*) ;
 int komeda_kms_add_private_objs (struct komeda_kms_dev*,struct komeda_dev*) ;
 int komeda_kms_add_wb_connectors (struct komeda_kms_dev*,struct komeda_dev*) ;
 int komeda_kms_cleanup_private_objs (struct komeda_kms_dev*) ;
 int komeda_kms_driver ;
 int komeda_kms_irq_handler ;
 int komeda_kms_mode_config_init (struct komeda_kms_dev*,struct komeda_dev*) ;
 struct komeda_kms_dev* kzalloc (int,int ) ;
 int stub1 (struct komeda_dev*) ;
 int stub2 (struct komeda_dev*) ;

struct komeda_kms_dev *komeda_kms_attach(struct komeda_dev *mdev)
{
 struct komeda_kms_dev *kms = kzalloc(sizeof(*kms), GFP_KERNEL);
 struct drm_device *drm;
 int err;

 if (!kms)
  return ERR_PTR(-ENOMEM);

 drm = &kms->base;
 err = drm_dev_init(drm, &komeda_kms_driver, mdev->dev);
 if (err)
  goto free_kms;

 drm->dev_private = mdev;

 komeda_kms_mode_config_init(kms, mdev);

 err = komeda_kms_add_private_objs(kms, mdev);
 if (err)
  goto cleanup_mode_config;

 err = komeda_kms_add_planes(kms, mdev);
 if (err)
  goto cleanup_mode_config;

 err = drm_vblank_init(drm, kms->n_crtcs);
 if (err)
  goto cleanup_mode_config;

 err = komeda_kms_add_crtcs(kms, mdev);
 if (err)
  goto cleanup_mode_config;

 err = komeda_kms_add_wb_connectors(kms, mdev);
 if (err)
  goto cleanup_mode_config;

 err = component_bind_all(mdev->dev, kms);
 if (err)
  goto cleanup_mode_config;

 drm_mode_config_reset(drm);

 err = devm_request_irq(drm->dev, mdev->irq,
          komeda_kms_irq_handler, IRQF_SHARED,
          drm->driver->name, drm);
 if (err)
  goto free_component_binding;

 err = mdev->funcs->enable_irq(mdev);
 if (err)
  goto free_component_binding;

 drm->irq_enabled = 1;

 drm_kms_helper_poll_init(drm);

 err = drm_dev_register(drm, 0);
 if (err)
  goto free_interrupts;

 return kms;

free_interrupts:
 drm_kms_helper_poll_fini(drm);
 drm->irq_enabled = 0;
 mdev->funcs->disable_irq(mdev);
free_component_binding:
 component_unbind_all(mdev->dev, drm);
cleanup_mode_config:
 drm_mode_config_cleanup(drm);
 komeda_kms_cleanup_private_objs(kms);
 drm->dev_private = ((void*)0);
 drm_dev_put(drm);
free_kms:
 kfree(kms);
 return ERR_PTR(err);
}
