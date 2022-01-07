
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u16 ;
struct skl_wm_params {int y_tile_minimum; scalar_t__ y_tiled; } ;
struct TYPE_8__ {int plane_res_b; int plane_en; } ;
struct skl_plane_wm {TYPE_4__ trans_wm; TYPE_3__* wm; } ;
struct TYPE_6__ {TYPE_1__* crtc; } ;
struct intel_crtc_state {TYPE_2__ base; } ;
struct drm_i915_private {int ipc_enabled; } ;
struct drm_device {int dummy; } ;
struct TYPE_7__ {int plane_res_b; } ;
struct TYPE_5__ {struct drm_device* dev; } ;


 int CNL_REVID_A0 ;
 int INTEL_GEN (struct drm_i915_private const*) ;
 scalar_t__ IS_CNL_REVID (struct drm_i915_private const*,int ,int ) ;
 int max (int,int) ;
 scalar_t__ mul_round_up_u32_fixed16 (int,int ) ;
 struct drm_i915_private* to_i915 (struct drm_device*) ;

__attribute__((used)) static void skl_compute_transition_wm(const struct intel_crtc_state *crtc_state,
          const struct skl_wm_params *wp,
          struct skl_plane_wm *wm)
{
 struct drm_device *dev = crtc_state->base.crtc->dev;
 const struct drm_i915_private *dev_priv = to_i915(dev);
 u16 trans_min, trans_y_tile_min;
 const u16 trans_amount = 10;
 u16 wm0_sel_res_b, trans_offset_b, res_blocks;


 if (INTEL_GEN(dev_priv) <= 9)
  return;


 if (!dev_priv->ipc_enabled)
  return;

 trans_min = 14;
 if (INTEL_GEN(dev_priv) >= 11)
  trans_min = 4;

 trans_offset_b = trans_min + trans_amount;
 wm0_sel_res_b = wm->wm[0].plane_res_b - 1;

 if (wp->y_tiled) {
  trans_y_tile_min =
   (u16)mul_round_up_u32_fixed16(2, wp->y_tile_minimum);
  res_blocks = max(wm0_sel_res_b, trans_y_tile_min) +
    trans_offset_b;
 } else {
  res_blocks = wm0_sel_res_b + trans_offset_b;


  if (IS_CNL_REVID(dev_priv, CNL_REVID_A0, CNL_REVID_A0))
   res_blocks += 1;

 }






 wm->trans_wm.plane_res_b = res_blocks + 1;
 wm->trans_wm.plane_en = 1;
}
