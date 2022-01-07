
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct skl_wm_params {int dummy; } ;
struct skl_wm_level {int min_ddb_alloc; } ;
struct TYPE_4__ {TYPE_1__* crtc; } ;
struct intel_crtc_state {int pixel_rate; TYPE_2__ base; } ;
struct drm_i915_private {int dummy; } ;
struct TYPE_3__ {int dev; } ;


 int DRM_FORMAT_ARGB8888 ;
 int DRM_FORMAT_MOD_LINEAR ;
 int DRM_MODE_ROTATE_0 ;
 int U16_MAX ;
 int WARN_ON (int) ;
 int drm_format_info (int ) ;
 int ilk_wm_max_level (struct drm_i915_private*) ;
 unsigned int max (int,int) ;
 int skl_compute_plane_wm (struct intel_crtc_state const*,int,struct skl_wm_params*,struct skl_wm_level*,struct skl_wm_level*) ;
 int skl_compute_wm_params (struct intel_crtc_state const*,int,int ,int ,int ,int ,struct skl_wm_params*,int ) ;
 struct drm_i915_private* to_i915 (int ) ;

__attribute__((used)) static unsigned int
skl_cursor_allocation(const struct intel_crtc_state *crtc_state,
        int num_active)
{
 struct drm_i915_private *dev_priv = to_i915(crtc_state->base.crtc->dev);
 int level, max_level = ilk_wm_max_level(dev_priv);
 struct skl_wm_level wm = {};
 int ret, min_ddb_alloc = 0;
 struct skl_wm_params wp;

 ret = skl_compute_wm_params(crtc_state, 256,
        drm_format_info(DRM_FORMAT_ARGB8888),
        DRM_FORMAT_MOD_LINEAR,
        DRM_MODE_ROTATE_0,
        crtc_state->pixel_rate, &wp, 0);
 WARN_ON(ret);

 for (level = 0; level <= max_level; level++) {
  skl_compute_plane_wm(crtc_state, level, &wp, &wm, &wm);
  if (wm.min_ddb_alloc == U16_MAX)
   break;

  min_ddb_alloc = wm.min_ddb_alloc;
 }

 return max(num_active == 1 ? 32 : 8, min_ddb_alloc);
}
