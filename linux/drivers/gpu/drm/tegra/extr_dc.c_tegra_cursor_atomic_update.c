
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tegra_dc {int dummy; } ;
struct tegra_bo {int paddr; } ;
struct drm_plane_state {int crtc_w; int crtc_y; int crtc_x; int crtc_h; int fb; int crtc; } ;
struct drm_plane {struct drm_plane_state* state; } ;


 int CURSOR_ALPHA ;
 int CURSOR_CLIP_DISPLAY ;
 int CURSOR_DST_BLEND_MASK ;
 int CURSOR_DST_BLEND_NEG_K1_TIMES_SRC ;
 int CURSOR_ENABLE ;
 int CURSOR_MODE_NORMAL ;
 int CURSOR_SIZE_128x128 ;
 int CURSOR_SIZE_256x256 ;
 int CURSOR_SIZE_32x32 ;
 int CURSOR_SIZE_64x64 ;
 int CURSOR_SRC_BLEND_K1_TIMES_SRC ;
 int CURSOR_SRC_BLEND_MASK ;
 int DC_DISP_BLEND_CURSOR_CONTROL ;
 int DC_DISP_CURSOR_POSITION ;
 int DC_DISP_CURSOR_START_ADDR ;
 int DC_DISP_CURSOR_START_ADDR_HI ;
 int DC_DISP_DISP_WIN_OPTIONS ;
 int WARN (int,char*,int,int ) ;
 int tegra_dc_readl (struct tegra_dc*,int ) ;
 int tegra_dc_writel (struct tegra_dc*,int,int ) ;
 struct tegra_bo* tegra_fb_get_plane (int ,int ) ;
 struct tegra_dc* to_tegra_dc (int ) ;

__attribute__((used)) static void tegra_cursor_atomic_update(struct drm_plane *plane,
           struct drm_plane_state *old_state)
{
 struct tegra_bo *bo = tegra_fb_get_plane(plane->state->fb, 0);
 struct tegra_dc *dc = to_tegra_dc(plane->state->crtc);
 struct drm_plane_state *state = plane->state;
 u32 value = CURSOR_CLIP_DISPLAY;


 if (!plane->state->crtc || !plane->state->fb)
  return;

 switch (state->crtc_w) {
 case 32:
  value |= CURSOR_SIZE_32x32;
  break;

 case 64:
  value |= CURSOR_SIZE_64x64;
  break;

 case 128:
  value |= CURSOR_SIZE_128x128;
  break;

 case 256:
  value |= CURSOR_SIZE_256x256;
  break;

 default:
  WARN(1, "cursor size %ux%u not supported\n", state->crtc_w,
       state->crtc_h);
  return;
 }

 value |= (bo->paddr >> 10) & 0x3fffff;
 tegra_dc_writel(dc, value, DC_DISP_CURSOR_START_ADDR);







 value = tegra_dc_readl(dc, DC_DISP_DISP_WIN_OPTIONS);
 value |= CURSOR_ENABLE;
 tegra_dc_writel(dc, value, DC_DISP_DISP_WIN_OPTIONS);

 value = tegra_dc_readl(dc, DC_DISP_BLEND_CURSOR_CONTROL);
 value &= ~CURSOR_DST_BLEND_MASK;
 value &= ~CURSOR_SRC_BLEND_MASK;
 value |= CURSOR_MODE_NORMAL;
 value |= CURSOR_DST_BLEND_NEG_K1_TIMES_SRC;
 value |= CURSOR_SRC_BLEND_K1_TIMES_SRC;
 value |= CURSOR_ALPHA;
 tegra_dc_writel(dc, value, DC_DISP_BLEND_CURSOR_CONTROL);


 value = (state->crtc_y & 0x3fff) << 16 | (state->crtc_x & 0x3fff);
 tegra_dc_writel(dc, value, DC_DISP_CURSOR_POSITION);
}
