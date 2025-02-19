
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct skl_wm_params {int dummy; } ;
struct skl_wm_level {int dummy; } ;
struct TYPE_4__ {TYPE_1__* crtc; } ;
struct intel_crtc_state {TYPE_2__ base; } ;
struct drm_i915_private {int dummy; } ;
struct TYPE_3__ {int dev; } ;


 int ilk_wm_max_level (struct drm_i915_private*) ;
 int skl_compute_plane_wm (struct intel_crtc_state const*,int,struct skl_wm_params const*,struct skl_wm_level*,struct skl_wm_level*) ;
 struct drm_i915_private* to_i915 (int ) ;

__attribute__((used)) static void
skl_compute_wm_levels(const struct intel_crtc_state *crtc_state,
        const struct skl_wm_params *wm_params,
        struct skl_wm_level *levels)
{
 struct drm_i915_private *dev_priv = to_i915(crtc_state->base.crtc->dev);
 int level, max_level = ilk_wm_max_level(dev_priv);
 struct skl_wm_level *result_prev = &levels[0];

 for (level = 0; level <= max_level; level++) {
  struct skl_wm_level *result = &levels[level];

  skl_compute_plane_wm(crtc_state, level, wm_params,
         result_prev, result);

  result_prev = result;
 }
}
