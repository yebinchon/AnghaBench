
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint_fixed_16_16_t ;
typedef scalar_t__ u32 ;
struct skl_wm_params {int cpp; int dbuf_block_size; int plane_bytes_per_line; scalar_t__ linetime_us; scalar_t__ y_min_scanlines; int plane_blocks_per_line; scalar_t__ y_tiled; int y_tile_minimum; scalar_t__ rc_surface; int plane_pixel_rate; scalar_t__ x_tiled; } ;
struct skl_wm_level {scalar_t__ plane_res_b; int plane_en; void* min_ddb_alloc; scalar_t__ plane_res_l; } ;
struct TYPE_7__ {int crtc_htotal; } ;
struct TYPE_8__ {TYPE_3__ adjusted_mode; TYPE_1__* crtc; } ;
struct intel_crtc_state {TYPE_4__ base; } ;
struct TYPE_6__ {scalar_t__* skl_latency; } ;
struct drm_i915_private {scalar_t__ ipc_enabled; TYPE_2__ wm; } ;
struct TYPE_5__ {int dev; } ;


 scalar_t__ DIV_ROUND_UP (scalar_t__,int) ;
 int INTEL_GEN (struct drm_i915_private*) ;
 scalar_t__ IS_BROXTON (struct drm_i915_private*) ;
 scalar_t__ IS_COFFEELAKE (struct drm_i915_private*) ;
 int IS_GEMINILAKE (struct drm_i915_private*) ;
 scalar_t__ IS_GEN (struct drm_i915_private*,int) ;
 scalar_t__ IS_GEN9_BC (struct drm_i915_private*) ;
 scalar_t__ IS_KABYLAKE (struct drm_i915_private*) ;
 void* U16_MAX ;
 scalar_t__ div_round_up_fixed16 (int ,int ) ;
 scalar_t__ fixed16_to_u32_round_up (int ) ;
 void* max (scalar_t__,scalar_t__) ;
 int max_fixed16 (int ,int ) ;
 int min_fixed16 (int ,int ) ;
 scalar_t__ mul_round_up_u32_fixed16 (scalar_t__,int ) ;
 scalar_t__ skl_needs_memory_bw_wa (struct drm_i915_private*) ;
 int skl_wm_has_lines (struct drm_i915_private*,int) ;
 int skl_wm_method1 (struct drm_i915_private*,int ,int,scalar_t__,int) ;
 int skl_wm_method2 (int ,int,scalar_t__,int ) ;
 struct drm_i915_private* to_i915 (int ) ;

__attribute__((used)) static void skl_compute_plane_wm(const struct intel_crtc_state *crtc_state,
     int level,
     const struct skl_wm_params *wp,
     const struct skl_wm_level *result_prev,
     struct skl_wm_level *result )
{
 struct drm_i915_private *dev_priv = to_i915(crtc_state->base.crtc->dev);
 u32 latency = dev_priv->wm.skl_latency[level];
 uint_fixed_16_16_t method1, method2;
 uint_fixed_16_16_t selected_result;
 u32 res_blocks, res_lines, min_ddb_alloc = 0;

 if (latency == 0) {

  result->min_ddb_alloc = U16_MAX;
  return;
 }





 if ((IS_KABYLAKE(dev_priv) || IS_COFFEELAKE(dev_priv)) ||
     dev_priv->ipc_enabled)
  latency += 4;

 if (skl_needs_memory_bw_wa(dev_priv) && wp->x_tiled)
  latency += 15;

 method1 = skl_wm_method1(dev_priv, wp->plane_pixel_rate,
     wp->cpp, latency, wp->dbuf_block_size);
 method2 = skl_wm_method2(wp->plane_pixel_rate,
     crtc_state->base.adjusted_mode.crtc_htotal,
     latency,
     wp->plane_blocks_per_line);

 if (wp->y_tiled) {
  selected_result = max_fixed16(method2, wp->y_tile_minimum);
 } else {
  if ((wp->cpp * crtc_state->base.adjusted_mode.crtc_htotal /
       wp->dbuf_block_size < 1) &&
       (wp->plane_bytes_per_line / wp->dbuf_block_size < 1)) {
   selected_result = method2;
  } else if (latency >= wp->linetime_us) {
   if (IS_GEN(dev_priv, 9) &&
       !IS_GEMINILAKE(dev_priv))
    selected_result = min_fixed16(method1, method2);
   else
    selected_result = method2;
  } else {
   selected_result = method1;
  }
 }

 res_blocks = fixed16_to_u32_round_up(selected_result) + 1;
 res_lines = div_round_up_fixed16(selected_result,
      wp->plane_blocks_per_line);

 if (IS_GEN9_BC(dev_priv) || IS_BROXTON(dev_priv)) {

  if (level == 0 && wp->rc_surface)
   res_blocks +=
    fixed16_to_u32_round_up(wp->y_tile_minimum);


  if (level >= 1 && level <= 7) {
   if (wp->y_tiled) {
    res_blocks +=
        fixed16_to_u32_round_up(wp->y_tile_minimum);
    res_lines += wp->y_min_scanlines;
   } else {
    res_blocks++;
   }







   if (result_prev->plane_res_b > res_blocks)
    res_blocks = result_prev->plane_res_b;
  }
 }

 if (INTEL_GEN(dev_priv) >= 11) {
  if (wp->y_tiled) {
   int extra_lines;

   if (res_lines % wp->y_min_scanlines == 0)
    extra_lines = wp->y_min_scanlines;
   else
    extra_lines = wp->y_min_scanlines * 2 -
     res_lines % wp->y_min_scanlines;

   min_ddb_alloc = mul_round_up_u32_fixed16(res_lines + extra_lines,
         wp->plane_blocks_per_line);
  } else {
   min_ddb_alloc = res_blocks +
    DIV_ROUND_UP(res_blocks, 10);
  }
 }

 if (!skl_wm_has_lines(dev_priv, level))
  res_lines = 0;

 if (res_lines > 31) {

  result->min_ddb_alloc = U16_MAX;
  return;
 }







 result->plane_res_b = res_blocks;
 result->plane_res_l = res_lines;

 result->min_ddb_alloc = max(min_ddb_alloc, res_blocks) + 1;
 result->plane_en = 1;
}
