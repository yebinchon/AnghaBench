
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct omap_drm_private {int dispc; TYPE_1__* dispc_ops; } ;
struct drm_device {int irq_enabled; struct omap_drm_private* dev_private; } ;
struct TYPE_2__ {int (* free_irq ) (int ,struct drm_device*) ;} ;


 int stub1 (int ,struct drm_device*) ;

void omap_drm_irq_uninstall(struct drm_device *dev)
{
 struct omap_drm_private *priv = dev->dev_private;

 if (!dev->irq_enabled)
  return;

 dev->irq_enabled = 0;

 priv->dispc_ops->free_irq(priv->dispc, dev);
}
