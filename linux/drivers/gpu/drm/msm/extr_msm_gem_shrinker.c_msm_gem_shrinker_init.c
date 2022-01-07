
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int notifier_call; } ;
struct TYPE_4__ {int seeks; int scan_objects; int count_objects; } ;
struct msm_drm_private {TYPE_1__ vmap_notifier; TYPE_2__ shrinker; } ;
struct drm_device {struct msm_drm_private* dev_private; } ;


 int DEFAULT_SEEKS ;
 int WARN_ON (int ) ;
 int msm_gem_shrinker_count ;
 int msm_gem_shrinker_scan ;
 int msm_gem_shrinker_vmap ;
 int register_shrinker (TYPE_2__*) ;
 int register_vmap_purge_notifier (TYPE_1__*) ;

void msm_gem_shrinker_init(struct drm_device *dev)
{
 struct msm_drm_private *priv = dev->dev_private;
 priv->shrinker.count_objects = msm_gem_shrinker_count;
 priv->shrinker.scan_objects = msm_gem_shrinker_scan;
 priv->shrinker.seeks = DEFAULT_SEEKS;
 WARN_ON(register_shrinker(&priv->shrinker));

 priv->vmap_notifier.notifier_call = msm_gem_shrinker_vmap;
 WARN_ON(register_vmap_purge_notifier(&priv->vmap_notifier));
}
