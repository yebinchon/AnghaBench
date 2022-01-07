
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_i915_private {int drm; } ;
typedef enum pipe { ____Placeholder_pipe } pipe ;


 int drm_wait_one_vblank (int *,int) ;

__attribute__((used)) static inline void
intel_wait_for_vblank(struct drm_i915_private *dev_priv, enum pipe pipe)
{
 drm_wait_one_vblank(&dev_priv->drm, pipe);
}
