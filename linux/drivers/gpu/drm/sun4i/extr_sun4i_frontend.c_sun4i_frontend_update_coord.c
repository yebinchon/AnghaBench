
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct sun4i_frontend {int regs; } ;
struct drm_plane_state {int crtc_w; int crtc_h; int src_w; int src_h; struct drm_framebuffer* fb; } ;
struct drm_plane {struct drm_plane_state* state; } ;
struct drm_framebuffer {TYPE_1__* format; } ;
struct TYPE_2__ {int vsub; int hsub; } ;


 int DIV_ROUND_UP (int,int ) ;
 int DRM_DEBUG_DRIVER (char*,int,int) ;
 int SUN4I_FRONTEND_CH0_HORZFACT_REG ;
 int SUN4I_FRONTEND_CH0_INSIZE_REG ;
 int SUN4I_FRONTEND_CH0_OUTSIZE_REG ;
 int SUN4I_FRONTEND_CH0_VERTFACT_REG ;
 int SUN4I_FRONTEND_CH1_HORZFACT_REG ;
 int SUN4I_FRONTEND_CH1_INSIZE_REG ;
 int SUN4I_FRONTEND_CH1_OUTSIZE_REG ;
 int SUN4I_FRONTEND_CH1_VERTFACT_REG ;
 int SUN4I_FRONTEND_FRM_CTRL_REG ;
 int SUN4I_FRONTEND_FRM_CTRL_REG_RDY ;
 int SUN4I_FRONTEND_INSIZE (int,int) ;
 int SUN4I_FRONTEND_OUTSIZE (int,int) ;
 int regmap_write (int ,int ,int) ;
 int regmap_write_bits (int ,int ,int ,int ) ;

void sun4i_frontend_update_coord(struct sun4i_frontend *frontend,
     struct drm_plane *plane)
{
 struct drm_plane_state *state = plane->state;
 struct drm_framebuffer *fb = state->fb;
 uint32_t luma_width, luma_height;
 uint32_t chroma_width, chroma_height;


 DRM_DEBUG_DRIVER("Frontend size W: %u H: %u\n",
    state->crtc_w, state->crtc_h);

 luma_width = state->src_w >> 16;
 luma_height = state->src_h >> 16;

 chroma_width = DIV_ROUND_UP(luma_width, fb->format->hsub);
 chroma_height = DIV_ROUND_UP(luma_height, fb->format->vsub);

 regmap_write(frontend->regs, SUN4I_FRONTEND_CH0_INSIZE_REG,
       SUN4I_FRONTEND_INSIZE(luma_height, luma_width));
 regmap_write(frontend->regs, SUN4I_FRONTEND_CH1_INSIZE_REG,
       SUN4I_FRONTEND_INSIZE(chroma_height, chroma_width));

 regmap_write(frontend->regs, SUN4I_FRONTEND_CH0_OUTSIZE_REG,
       SUN4I_FRONTEND_OUTSIZE(state->crtc_h, state->crtc_w));
 regmap_write(frontend->regs, SUN4I_FRONTEND_CH1_OUTSIZE_REG,
       SUN4I_FRONTEND_OUTSIZE(state->crtc_h, state->crtc_w));

 regmap_write(frontend->regs, SUN4I_FRONTEND_CH0_HORZFACT_REG,
       (luma_width << 16) / state->crtc_w);
 regmap_write(frontend->regs, SUN4I_FRONTEND_CH1_HORZFACT_REG,
       (chroma_width << 16) / state->crtc_w);

 regmap_write(frontend->regs, SUN4I_FRONTEND_CH0_VERTFACT_REG,
       (luma_height << 16) / state->crtc_h);
 regmap_write(frontend->regs, SUN4I_FRONTEND_CH1_VERTFACT_REG,
       (chroma_height << 16) / state->crtc_h);

 regmap_write_bits(frontend->regs, SUN4I_FRONTEND_FRM_CTRL_REG,
     SUN4I_FRONTEND_FRM_CTRL_REG_RDY,
     SUN4I_FRONTEND_FRM_CTRL_REG_RDY);
}
