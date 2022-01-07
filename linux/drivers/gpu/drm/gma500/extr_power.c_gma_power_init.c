
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct drm_psb_private {int apm_base; int apm_reg; int ospm_base; int display_power; int suspended; TYPE_1__* ops; scalar_t__ display_count; } ;
struct drm_device {struct drm_psb_private* dev_private; } ;
struct TYPE_2__ {int (* init_pm ) (struct drm_device*) ;} ;


 int mutex_init (int *) ;
 int power_ctrl_lock ;
 int power_mutex ;
 int spin_lock_init (int *) ;
 int stub1 (struct drm_device*) ;

void gma_power_init(struct drm_device *dev)
{
 struct drm_psb_private *dev_priv = dev->dev_private;


 dev_priv->apm_base = dev_priv->apm_reg & 0xffff;
 dev_priv->ospm_base &= 0xffff;

 dev_priv->display_power = 1;
 dev_priv->display_count = 0;
 dev_priv->suspended = 0;
 spin_lock_init(&power_ctrl_lock);
 mutex_init(&power_mutex);

 if (dev_priv->ops->init_pm)
  dev_priv->ops->init_pm(dev);
}
