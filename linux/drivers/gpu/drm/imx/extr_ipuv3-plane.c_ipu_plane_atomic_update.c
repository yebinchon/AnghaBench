
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct ipu_plane_state {scalar_t__ use_pre; } ;
struct TYPE_6__ {TYPE_1__* dev; } ;
struct ipu_plane {int dp_flow; int ipu_ch; TYPE_2__ base; int alpha_ch; int dmfc; int dp; int dma; } ;
struct drm_rect {int x1; int y1; } ;
struct drm_plane_state {int normalized_zpos; struct drm_rect src; struct drm_framebuffer* fb; struct drm_rect dst; TYPE_3__* crtc; } ;
struct drm_plane {struct drm_plane_state* state; } ;
struct drm_framebuffer {int * pitches; TYPE_4__* format; int modifier; } ;
struct drm_format_info {int * cpp; } ;
struct drm_crtc_state {int dummy; } ;
typedef enum ipu_color_space { ____Placeholder_ipu_color_space } ipu_color_space ;
struct TYPE_8__ {int const format; int has_alpha; } ;
struct TYPE_7__ {struct drm_crtc_state* state; } ;
struct TYPE_5__ {int dev; } ;
 int IPUV3_COLORSPACE_RGB ;
 int IPUV3_COLORSPACE_UNKNOWN ;


 int dev_dbg (int ,char*,unsigned long,int,int,...) ;
 int drm_atomic_crtc_needs_modeset (struct drm_crtc_state*) ;
 struct drm_format_info* drm_format_info (int) ;
 unsigned long drm_plane_state_to_eba (struct drm_plane_state*,int) ;
 unsigned long drm_plane_state_to_ubo (struct drm_plane_state*) ;
 unsigned long drm_plane_state_to_vbo (struct drm_plane_state*) ;
 int drm_rect_height (struct drm_rect*) ;
 int drm_rect_width (struct drm_rect*) ;
 int ipu_calculate_bursts (int,int ,int ,int*,int*) ;
 unsigned int ipu_chan_assign_axi_id (int ) ;
 int ipu_cpmem_set_axi_id (int ,unsigned int) ;
 int ipu_cpmem_set_buffer (int ,int,unsigned long) ;
 int ipu_cpmem_set_burstsize (int ,int) ;
 int ipu_cpmem_set_fmt (int ,int) ;
 int ipu_cpmem_set_format_passthrough (int ,int) ;
 int ipu_cpmem_set_high_priority (int ) ;
 int ipu_cpmem_set_resolution (int ,int,int) ;
 int ipu_cpmem_set_stride (int ,int ) ;
 int ipu_cpmem_set_yuv_planar_full (int ,int ,unsigned long,unsigned long) ;
 int ipu_cpmem_zero (int ) ;
 int ipu_dmfc_config_wait4eot (int ,int) ;
 int ipu_dp_set_global_alpha (int ,int,int,int) ;
 int ipu_dp_set_window_pos (int ,int,int) ;
 int ipu_dp_setup_channel (int ,int,int ) ;
 int ipu_drm_fourcc_to_colorspace (int const) ;
 int ipu_idmac_enable_watermark (int ,int) ;
 int ipu_idmac_get_current_buffer (int ) ;
 int ipu_idmac_lock_enable (int ,int) ;
 int ipu_idmac_select_buffer (int ,int) ;
 int ipu_idmac_set_double_buffer (int ,int) ;
 int ipu_plane_enable (struct ipu_plane*) ;
 scalar_t__ ipu_plane_separate_alpha (struct ipu_plane*) ;
 int ipu_prg_channel_configure (int ,unsigned int,int,int,int ,int const,int ,unsigned long*) ;
 int swap (unsigned long,unsigned long) ;
 struct ipu_plane* to_ipu_plane (struct drm_plane*) ;
 struct ipu_plane_state* to_ipu_plane_state (struct drm_plane_state*) ;

__attribute__((used)) static void ipu_plane_atomic_update(struct drm_plane *plane,
        struct drm_plane_state *old_state)
{
 struct ipu_plane *ipu_plane = to_ipu_plane(plane);
 struct drm_plane_state *state = plane->state;
 struct ipu_plane_state *ipu_state = to_ipu_plane_state(state);
 struct drm_crtc_state *crtc_state = state->crtc->state;
 struct drm_framebuffer *fb = state->fb;
 struct drm_rect *dst = &state->dst;
 unsigned long eba, ubo, vbo;
 unsigned long alpha_eba = 0;
 enum ipu_color_space ics;
 unsigned int axi_id = 0;
 const struct drm_format_info *info;
 u8 burstsize, num_bursts;
 u32 width, height;
 int active;

 if (ipu_plane->dp_flow == 128)
  ipu_dp_set_window_pos(ipu_plane->dp, dst->x1, dst->y1);

 switch (ipu_plane->dp_flow) {
 case 129:
  if (state->normalized_zpos == 1) {
   ipu_dp_set_global_alpha(ipu_plane->dp,
      !fb->format->has_alpha, 0xff,
      1);
  } else {
   ipu_dp_set_global_alpha(ipu_plane->dp, 1, 0, 1);
  }
  break;
 case 128:
  if (state->normalized_zpos == 1) {
   ipu_dp_set_global_alpha(ipu_plane->dp,
      !fb->format->has_alpha, 0xff,
      0);
  }
  break;
 }

 eba = drm_plane_state_to_eba(state, 0);





 if (ipu_state->use_pre) {
  axi_id = ipu_chan_assign_axi_id(ipu_plane->dma);
  ipu_prg_channel_configure(ipu_plane->ipu_ch, axi_id,
       drm_rect_width(&state->src) >> 16,
       drm_rect_height(&state->src) >> 16,
       fb->pitches[0], fb->format->format,
       fb->modifier, &eba);
 }

 if (old_state->fb && !drm_atomic_crtc_needs_modeset(crtc_state)) {

  if (ipu_state->use_pre)
   return;
  active = ipu_idmac_get_current_buffer(ipu_plane->ipu_ch);
  ipu_cpmem_set_buffer(ipu_plane->ipu_ch, !active, eba);
  ipu_idmac_select_buffer(ipu_plane->ipu_ch, !active);
  if (ipu_plane_separate_alpha(ipu_plane)) {
   active = ipu_idmac_get_current_buffer(ipu_plane->alpha_ch);
   ipu_cpmem_set_buffer(ipu_plane->alpha_ch, !active,
          alpha_eba);
   ipu_idmac_select_buffer(ipu_plane->alpha_ch, !active);
  }
  return;
 }

 ics = ipu_drm_fourcc_to_colorspace(fb->format->format);
 switch (ipu_plane->dp_flow) {
 case 129:
  ipu_dp_setup_channel(ipu_plane->dp, ics, IPUV3_COLORSPACE_RGB);
  break;
 case 128:
  ipu_dp_setup_channel(ipu_plane->dp, ics,
     IPUV3_COLORSPACE_UNKNOWN);
  break;
 }

 ipu_dmfc_config_wait4eot(ipu_plane->dmfc, drm_rect_width(dst));

 width = drm_rect_width(&state->src) >> 16;
 height = drm_rect_height(&state->src) >> 16;
 info = drm_format_info(fb->format->format);
 ipu_calculate_bursts(width, info->cpp[0], fb->pitches[0],
        &burstsize, &num_bursts);

 ipu_cpmem_zero(ipu_plane->ipu_ch);
 ipu_cpmem_set_resolution(ipu_plane->ipu_ch, width, height);
 ipu_cpmem_set_fmt(ipu_plane->ipu_ch, fb->format->format);
 ipu_cpmem_set_burstsize(ipu_plane->ipu_ch, burstsize);
 ipu_cpmem_set_high_priority(ipu_plane->ipu_ch);
 ipu_idmac_enable_watermark(ipu_plane->ipu_ch, 1);
 ipu_idmac_set_double_buffer(ipu_plane->ipu_ch, 1);
 ipu_cpmem_set_stride(ipu_plane->ipu_ch, fb->pitches[0]);
 ipu_cpmem_set_axi_id(ipu_plane->ipu_ch, axi_id);

 switch (fb->format->format) {
 case 135:
 case 132:
 case 134:
 case 131:
 case 133:
 case 130:
  ubo = drm_plane_state_to_ubo(state);
  vbo = drm_plane_state_to_vbo(state);
  if (fb->format->format == 132 ||
      fb->format->format == 131 ||
      fb->format->format == 130)
   swap(ubo, vbo);

  ipu_cpmem_set_yuv_planar_full(ipu_plane->ipu_ch,
           fb->pitches[1], ubo, vbo);

  dev_dbg(ipu_plane->base.dev->dev,
   "phy = %lu %lu %lu, x = %d, y = %d", eba, ubo, vbo,
   state->src.x1 >> 16, state->src.y1 >> 16);
  break;
 case 140:
 case 139:
  ubo = drm_plane_state_to_ubo(state);

  ipu_cpmem_set_yuv_planar_full(ipu_plane->ipu_ch,
           fb->pitches[1], ubo, ubo);

  dev_dbg(ipu_plane->base.dev->dev,
   "phy = %lu %lu, x = %d, y = %d", eba, ubo,
   state->src.x1 >> 16, state->src.y1 >> 16);
  break;
 case 138:
 case 143:
 case 137:
 case 142:
 case 136:
 case 141:
  alpha_eba = drm_plane_state_to_eba(state, 1);
  num_bursts = 0;

  dev_dbg(ipu_plane->base.dev->dev, "phys = %lu %lu, x = %d, y = %d",
   eba, alpha_eba, state->src.x1 >> 16, state->src.y1 >> 16);

  ipu_cpmem_set_burstsize(ipu_plane->ipu_ch, 16);

  ipu_cpmem_zero(ipu_plane->alpha_ch);
  ipu_cpmem_set_resolution(ipu_plane->alpha_ch,
      drm_rect_width(&state->src) >> 16,
      drm_rect_height(&state->src) >> 16);
  ipu_cpmem_set_format_passthrough(ipu_plane->alpha_ch, 8);
  ipu_cpmem_set_high_priority(ipu_plane->alpha_ch);
  ipu_idmac_set_double_buffer(ipu_plane->alpha_ch, 1);
  ipu_cpmem_set_stride(ipu_plane->alpha_ch, fb->pitches[1]);
  ipu_cpmem_set_burstsize(ipu_plane->alpha_ch, 16);
  ipu_cpmem_set_buffer(ipu_plane->alpha_ch, 0, alpha_eba);
  ipu_cpmem_set_buffer(ipu_plane->alpha_ch, 1, alpha_eba);
  break;
 default:
  dev_dbg(ipu_plane->base.dev->dev, "phys = %lu, x = %d, y = %d",
   eba, state->src.x1 >> 16, state->src.y1 >> 16);
  break;
 }
 ipu_cpmem_set_buffer(ipu_plane->ipu_ch, 0, eba);
 ipu_cpmem_set_buffer(ipu_plane->ipu_ch, 1, eba);
 ipu_idmac_lock_enable(ipu_plane->ipu_ch, num_bursts);
 ipu_plane_enable(ipu_plane);
}
