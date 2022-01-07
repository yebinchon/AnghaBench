
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ nr_deferred; } ;
struct msm_drm_private {TYPE_1__ shrinker; int vmap_notifier; } ;
struct drm_device {struct msm_drm_private* dev_private; } ;


 int WARN_ON (int ) ;
 int unregister_shrinker (TYPE_1__*) ;
 int unregister_vmap_purge_notifier (int *) ;

void msm_gem_shrinker_cleanup(struct drm_device *dev)
{
 struct msm_drm_private *priv = dev->dev_private;

 if (priv->shrinker.nr_deferred) {
  WARN_ON(unregister_vmap_purge_notifier(&priv->vmap_notifier));
  unregister_shrinker(&priv->shrinker);
 }
}
