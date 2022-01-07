
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct omap_drm_private {int zorder_prop; int dispc; TYPE_1__* dispc_ops; } ;
struct drm_device {struct omap_drm_private* dev_private; } ;
struct TYPE_2__ {unsigned int (* get_num_ovls ) (int ) ;} ;


 int ENOMEM ;
 int drm_property_create_range (struct drm_device*,int ,char*,int ,unsigned int) ;
 unsigned int stub1 (int ) ;

__attribute__((used)) static int omap_modeset_init_properties(struct drm_device *dev)
{
 struct omap_drm_private *priv = dev->dev_private;
 unsigned int num_planes = priv->dispc_ops->get_num_ovls(priv->dispc);

 priv->zorder_prop = drm_property_create_range(dev, 0, "zorder", 0,
            num_planes - 1);
 if (!priv->zorder_prop)
  return -ENOMEM;

 return 0;
}
