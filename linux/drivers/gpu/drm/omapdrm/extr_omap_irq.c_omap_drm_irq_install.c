
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct omap_drm_private {int dispc; TYPE_1__* dispc_ops; scalar_t__ irq_mask; scalar_t__* planes; int wait_list; int wait_lock; } ;
struct drm_device {int irq_enabled; struct omap_drm_private* dev_private; } ;
struct TYPE_2__ {unsigned int (* get_num_mgrs ) (int ) ;int (* request_irq ) (int ,int ,struct drm_device*) ;int (* runtime_put ) (int ) ;int (* clear_irqstatus ) (int ,int) ;int (* runtime_get ) (int ) ;scalar_t__ (* mgr_get_sync_lost_irq ) (int ,unsigned int) ;} ;


 int ARRAY_SIZE (scalar_t__*) ;
 scalar_t__ DISPC_IRQ_OCP_ERR ;
 int INIT_LIST_HEAD (int *) ;
 unsigned int min (int ,int ) ;
 int omap_irq_handler ;
 scalar_t__* omap_underflow_irqs ;
 int spin_lock_init (int *) ;
 unsigned int stub1 (int ) ;
 scalar_t__ stub2 (int ,unsigned int) ;
 int stub3 (int ) ;
 int stub4 (int ,int) ;
 int stub5 (int ) ;
 int stub6 (int ,int ,struct drm_device*) ;

int omap_drm_irq_install(struct drm_device *dev)
{
 struct omap_drm_private *priv = dev->dev_private;
 unsigned int num_mgrs = priv->dispc_ops->get_num_mgrs(priv->dispc);
 unsigned int max_planes;
 unsigned int i;
 int ret;

 spin_lock_init(&priv->wait_lock);
 INIT_LIST_HEAD(&priv->wait_list);

 priv->irq_mask = DISPC_IRQ_OCP_ERR;

 max_planes = min(ARRAY_SIZE(priv->planes),
    ARRAY_SIZE(omap_underflow_irqs));
 for (i = 0; i < max_planes; ++i) {
  if (priv->planes[i])
   priv->irq_mask |= omap_underflow_irqs[i];
 }

 for (i = 0; i < num_mgrs; ++i)
  priv->irq_mask |= priv->dispc_ops->mgr_get_sync_lost_irq(priv->dispc, i);

 priv->dispc_ops->runtime_get(priv->dispc);
 priv->dispc_ops->clear_irqstatus(priv->dispc, 0xffffffff);
 priv->dispc_ops->runtime_put(priv->dispc);

 ret = priv->dispc_ops->request_irq(priv->dispc, omap_irq_handler, dev);
 if (ret < 0)
  return ret;

 dev->irq_enabled = 1;

 return 0;
}
