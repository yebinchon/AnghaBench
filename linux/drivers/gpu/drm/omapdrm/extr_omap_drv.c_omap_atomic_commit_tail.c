
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct omap_drm_private {int omaprev; int dispc; TYPE_1__* dispc_ops; } ;
struct drm_device {struct omap_drm_private* dev_private; } ;
struct drm_atomic_state {struct drm_device* dev; } ;
struct TYPE_2__ {int (* runtime_put ) (int ) ;int (* runtime_get ) (int ) ;} ;


 int drm_atomic_helper_cleanup_planes (struct drm_device*,struct drm_atomic_state*) ;
 int drm_atomic_helper_commit_hw_done (struct drm_atomic_state*) ;
 int drm_atomic_helper_commit_modeset_disables (struct drm_device*,struct drm_atomic_state*) ;
 int drm_atomic_helper_commit_modeset_enables (struct drm_device*,struct drm_atomic_state*) ;
 int drm_atomic_helper_commit_planes (struct drm_device*,struct drm_atomic_state*,int ) ;
 int omap_atomic_wait_for_completion (struct drm_device*,struct drm_atomic_state*) ;
 int stub1 (int ) ;
 int stub2 (int ) ;

__attribute__((used)) static void omap_atomic_commit_tail(struct drm_atomic_state *old_state)
{
 struct drm_device *dev = old_state->dev;
 struct omap_drm_private *priv = dev->dev_private;

 priv->dispc_ops->runtime_get(priv->dispc);


 drm_atomic_helper_commit_modeset_disables(dev, old_state);

 if (priv->omaprev != 0x3430) {
  drm_atomic_helper_commit_modeset_enables(dev, old_state);
  omap_atomic_wait_for_completion(dev, old_state);

  drm_atomic_helper_commit_planes(dev, old_state, 0);

  drm_atomic_helper_commit_hw_done(old_state);
 } else {





  drm_atomic_helper_commit_planes(dev, old_state, 0);

  drm_atomic_helper_commit_modeset_enables(dev, old_state);

  drm_atomic_helper_commit_hw_done(old_state);
 }





 omap_atomic_wait_for_completion(dev, old_state);

 drm_atomic_helper_cleanup_planes(dev, old_state);

 priv->dispc_ops->runtime_put(priv->dispc);
}
