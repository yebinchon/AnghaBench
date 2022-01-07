
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* crtc; } ;
struct intel_crtc_state {TYPE_2__ base; } ;
struct TYPE_6__ {int max_level; } ;
struct drm_i915_private {TYPE_3__ wm; } ;
struct TYPE_4__ {int dev; } ;


 int PLANE_CURSOR ;
 int PLANE_PRIMARY ;
 int PLANE_SPRITE0 ;
 scalar_t__ g4x_raw_plane_wm_is_valid (struct intel_crtc_state const*,int ,int) ;
 struct drm_i915_private* to_i915 (int ) ;

__attribute__((used)) static bool g4x_raw_crtc_wm_is_valid(const struct intel_crtc_state *crtc_state,
         int level)
{
 struct drm_i915_private *dev_priv = to_i915(crtc_state->base.crtc->dev);

 if (level > dev_priv->wm.max_level)
  return 0;

 return g4x_raw_plane_wm_is_valid(crtc_state, PLANE_PRIMARY, level) &&
  g4x_raw_plane_wm_is_valid(crtc_state, PLANE_SPRITE0, level) &&
  g4x_raw_plane_wm_is_valid(crtc_state, PLANE_CURSOR, level);
}
