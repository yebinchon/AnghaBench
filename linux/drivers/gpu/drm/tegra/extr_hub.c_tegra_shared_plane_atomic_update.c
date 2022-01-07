
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_5__ {unsigned long value; int mode; } ;
struct tegra_plane_state {int format; TYPE_2__ tiling; } ;
struct tegra_plane {int dummy; } ;
struct tegra_dc {int dev; TYPE_1__* soc; } ;
struct tegra_bo {int paddr; } ;
struct drm_plane_state {int dummy; } ;
struct drm_plane {TYPE_3__* state; } ;
struct drm_framebuffer {int * pitches; } ;
typedef int dma_addr_t ;
struct TYPE_6__ {unsigned int normalized_zpos; int src_y; int src_x; int crtc_w; int crtc_h; int crtc_x; int crtc_y; int visible; struct drm_framebuffer* fb; int crtc; } ;
struct TYPE_4__ {scalar_t__ supports_block_linear; } ;


 int BLEND_FACTOR_DST_ALPHA_ZERO ;
 int BLEND_FACTOR_DST_COLOR_NEG_K1_TIMES_SRC ;
 int BLEND_FACTOR_SRC_ALPHA_K2 ;
 int BLEND_FACTOR_SRC_COLOR_K1_TIMES_SRC ;
 int CLAMP_BEFORE_BLEND ;
 int COLOR_EXPAND ;
 int CONTROL_CSC_ENABLE ;
 int DC_WINBUF_CDE_CONTROL ;
 int DC_WINBUF_CROPPED_POINT ;
 int DC_WINBUF_START_ADDR ;
 int DC_WINBUF_START_ADDR_HI ;
 int DC_WINBUF_SURFACE_KIND ;
 int DC_WINBUF_SURFACE_KIND_BLOCK ;
 int DC_WINBUF_SURFACE_KIND_BLOCK_HEIGHT (unsigned long) ;
 int DC_WINBUF_SURFACE_KIND_PITCH ;
 int DC_WINBUF_SURFACE_KIND_TILED ;
 int DC_WIN_BLEND_LAYER_CONTROL ;
 int DC_WIN_BLEND_MATCH_SELECT ;
 int DC_WIN_BLEND_NOMATCH_SELECT ;
 int DC_WIN_COLOR_DEPTH ;
 int DC_WIN_CORE_ACT_CONTROL ;
 int DC_WIN_CROPPED_SIZE ;
 int DC_WIN_PLANAR_STORAGE ;
 int DC_WIN_POSITION ;
 int DC_WIN_PRECOMP_WGRP_PARAMS ;
 int DC_WIN_SET_PARAMS ;
 int DC_WIN_SIZE ;
 int DC_WIN_WINDOWGROUP_SET_CONTROL_INPUT_SCALER ;
 int DC_WIN_WINDOWGROUP_SET_INPUT_SCALER_USAGE ;
 int DC_WIN_WINDOW_SET_CONTROL ;
 int DC_WIN_WIN_OPTIONS ;
 int DEGAMMA_SRGB ;
 int HORIZONTAL_TAPS_5 ;
 int H_POSITION (int ) ;
 int H_SIZE (int ) ;
 int INPUT_RANGE_FULL ;
 int INPUT_SCALER_HBYPASS ;
 int INPUT_SCALER_VBYPASS ;
 int K1 (int) ;
 int K2 (int) ;
 int OFFSET_X (int) ;
 int OFFSET_Y (int) ;
 int PITCH (int ) ;



 int VCOUNTER ;
 int VERTICAL_TAPS_5 ;
 int V_POSITION (int ) ;
 int V_SIZE (int ) ;
 int WINDOW_LAYER_DEPTH (int) ;
 int WIN_ENABLE ;
 int lower_32_bits (int ) ;
 int pm_runtime_get_sync (int ) ;
 int pm_runtime_put (int ) ;
 int tegra_dc_assign_shared_plane (struct tegra_dc*,struct tegra_plane*) ;
 struct tegra_bo* tegra_fb_get_plane (struct drm_framebuffer*,int ) ;
 int tegra_plane_readl (struct tegra_plane*,int ) ;
 int tegra_plane_writel (struct tegra_plane*,int,int ) ;
 int tegra_shared_plane_atomic_disable (struct drm_plane*,struct drm_plane_state*) ;
 struct tegra_dc* to_tegra_dc (int ) ;
 struct tegra_plane* to_tegra_plane (struct drm_plane*) ;
 struct tegra_plane_state* to_tegra_plane_state (TYPE_3__*) ;
 int upper_32_bits (int ) ;

__attribute__((used)) static void tegra_shared_plane_atomic_update(struct drm_plane *plane,
          struct drm_plane_state *old_state)
{
 struct tegra_plane_state *state = to_tegra_plane_state(plane->state);
 struct tegra_dc *dc = to_tegra_dc(plane->state->crtc);
 unsigned int zpos = plane->state->normalized_zpos;
 struct drm_framebuffer *fb = plane->state->fb;
 struct tegra_plane *p = to_tegra_plane(plane);
 struct tegra_bo *bo;
 dma_addr_t base;
 u32 value;


 if (!plane->state->crtc || !plane->state->fb)
  return;

 if (!plane->state->visible) {
  tegra_shared_plane_atomic_disable(plane, old_state);
  return;
 }

 pm_runtime_get_sync(dc->dev);

 tegra_dc_assign_shared_plane(dc, p);

 tegra_plane_writel(p, VCOUNTER, DC_WIN_CORE_ACT_CONTROL);


 value = BLEND_FACTOR_DST_ALPHA_ZERO | BLEND_FACTOR_SRC_ALPHA_K2 |
  BLEND_FACTOR_DST_COLOR_NEG_K1_TIMES_SRC |
  BLEND_FACTOR_SRC_COLOR_K1_TIMES_SRC;
 tegra_plane_writel(p, value, DC_WIN_BLEND_MATCH_SELECT);

 value = BLEND_FACTOR_DST_ALPHA_ZERO | BLEND_FACTOR_SRC_ALPHA_K2 |
  BLEND_FACTOR_DST_COLOR_NEG_K1_TIMES_SRC |
  BLEND_FACTOR_SRC_COLOR_K1_TIMES_SRC;
 tegra_plane_writel(p, value, DC_WIN_BLEND_NOMATCH_SELECT);

 value = K2(255) | K1(255) | WINDOW_LAYER_DEPTH(255 - zpos);
 tegra_plane_writel(p, value, DC_WIN_BLEND_LAYER_CONTROL);


 value = HORIZONTAL_TAPS_5 | VERTICAL_TAPS_5;
 tegra_plane_writel(p, value, DC_WIN_WINDOWGROUP_SET_CONTROL_INPUT_SCALER);

 value = INPUT_SCALER_VBYPASS | INPUT_SCALER_HBYPASS;
 tegra_plane_writel(p, value, DC_WIN_WINDOWGROUP_SET_INPUT_SCALER_USAGE);


 tegra_plane_writel(p, 0, DC_WINBUF_CDE_CONTROL);

 bo = tegra_fb_get_plane(fb, 0);
 base = bo->paddr;

 tegra_plane_writel(p, state->format, DC_WIN_COLOR_DEPTH);
 tegra_plane_writel(p, 0, DC_WIN_PRECOMP_WGRP_PARAMS);

 value = V_POSITION(plane->state->crtc_y) |
  H_POSITION(plane->state->crtc_x);
 tegra_plane_writel(p, value, DC_WIN_POSITION);

 value = V_SIZE(plane->state->crtc_h) | H_SIZE(plane->state->crtc_w);
 tegra_plane_writel(p, value, DC_WIN_SIZE);

 value = WIN_ENABLE | COLOR_EXPAND;
 tegra_plane_writel(p, value, DC_WIN_WIN_OPTIONS);

 value = V_SIZE(plane->state->crtc_h) | H_SIZE(plane->state->crtc_w);
 tegra_plane_writel(p, value, DC_WIN_CROPPED_SIZE);

 tegra_plane_writel(p, upper_32_bits(base), DC_WINBUF_START_ADDR_HI);
 tegra_plane_writel(p, lower_32_bits(base), DC_WINBUF_START_ADDR);

 value = PITCH(fb->pitches[0]);
 tegra_plane_writel(p, value, DC_WIN_PLANAR_STORAGE);

 value = CLAMP_BEFORE_BLEND | DEGAMMA_SRGB | INPUT_RANGE_FULL;
 tegra_plane_writel(p, value, DC_WIN_SET_PARAMS);

 value = OFFSET_X(plane->state->src_y >> 16) |
  OFFSET_Y(plane->state->src_x >> 16);
 tegra_plane_writel(p, value, DC_WINBUF_CROPPED_POINT);

 if (dc->soc->supports_block_linear) {
  unsigned long height = state->tiling.value;


  switch (state->tiling.mode) {
  case 129:
   value = DC_WINBUF_SURFACE_KIND_BLOCK_HEIGHT(0) |
    DC_WINBUF_SURFACE_KIND_PITCH;
   break;


  case 128:
   value = DC_WINBUF_SURFACE_KIND_TILED;
   break;

  case 130:
   value = DC_WINBUF_SURFACE_KIND_BLOCK_HEIGHT(height) |
    DC_WINBUF_SURFACE_KIND_BLOCK;
   break;
  }

  tegra_plane_writel(p, value, DC_WINBUF_SURFACE_KIND);
 }


 value = tegra_plane_readl(p, DC_WIN_WINDOW_SET_CONTROL);
 value &= ~CONTROL_CSC_ENABLE;
 tegra_plane_writel(p, value, DC_WIN_WINDOW_SET_CONTROL);

 pm_runtime_put(dc->dev);
}
