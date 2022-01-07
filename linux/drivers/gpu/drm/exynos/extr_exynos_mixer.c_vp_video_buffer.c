
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u32 ;
struct mixer_context {int reg_slock; int flags; } ;
struct TYPE_10__ {int normalized_zpos; int alpha; struct drm_framebuffer* fb; } ;
struct TYPE_9__ {int w; int x; int h; int y; } ;
struct TYPE_8__ {int w; int h; int y; int x; } ;
struct exynos_drm_plane_state {int h_ratio; int v_ratio; TYPE_5__ base; TYPE_4__ crtc; TYPE_3__ src; } ;
struct TYPE_6__ {int state; } ;
struct exynos_drm_plane {int index; TYPE_1__ base; } ;
struct drm_framebuffer {scalar_t__ modifier; int* pitches; int height; TYPE_2__* format; } ;
typedef int dma_addr_t ;
struct TYPE_7__ {scalar_t__ format; } ;


 scalar_t__ DRM_FORMAT_MOD_SAMSUNG_64_32_TILE ;
 scalar_t__ DRM_FORMAT_NV21 ;
 int MXR_BIT_INTERLACE ;
 int VP_BOT_C_PTR ;
 int VP_BOT_Y_PTR ;
 int VP_DST_HEIGHT ;
 int VP_DST_H_POSITION ;
 int VP_DST_V_POSITION ;
 int VP_DST_WIDTH ;
 int VP_ENDIAN_MODE ;
 int VP_ENDIAN_MODE_LITTLE ;
 int VP_H_RATIO ;
 int VP_IMG_HSIZE (int) ;
 int VP_IMG_SIZE_C ;
 int VP_IMG_SIZE_Y ;
 int VP_IMG_VSIZE (int) ;
 int VP_MODE ;
 int VP_MODE_FMT_MASK ;
 int VP_MODE_LINE_SKIP ;
 int VP_MODE_MEM_LINEAR ;
 int VP_MODE_MEM_TILED ;
 int VP_MODE_NV12 ;
 int VP_MODE_NV21 ;
 int VP_SRC_HEIGHT ;
 int VP_SRC_H_POSITION ;
 int VP_SRC_H_POSITION_VAL (int ) ;
 int VP_SRC_V_POSITION ;
 int VP_SRC_WIDTH ;
 int VP_TOP_C_PTR ;
 int VP_TOP_Y_PTR ;
 int VP_V_RATIO ;
 int exynos_drm_fb_dma_addr (struct drm_framebuffer*,int) ;
 int mixer_cfg_layer (struct mixer_context*,int ,unsigned int,int) ;
 int mixer_cfg_vp_blend (struct mixer_context*,int ) ;
 int mixer_regs_dump (struct mixer_context*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 scalar_t__ test_bit (int ,int *) ;
 struct exynos_drm_plane_state* to_exynos_plane_state (int ) ;
 int vp_reg_write (struct mixer_context*,int ,int) ;
 int vp_reg_writemask (struct mixer_context*,int ,int ,int ) ;
 int vp_regs_dump (struct mixer_context*) ;

__attribute__((used)) static void vp_video_buffer(struct mixer_context *ctx,
       struct exynos_drm_plane *plane)
{
 struct exynos_drm_plane_state *state =
    to_exynos_plane_state(plane->base.state);
 struct drm_framebuffer *fb = state->base.fb;
 unsigned int priority = state->base.normalized_zpos + 1;
 unsigned long flags;
 dma_addr_t luma_addr[2], chroma_addr[2];
 bool is_tiled, is_nv21;
 u32 val;

 is_nv21 = (fb->format->format == DRM_FORMAT_NV21);
 is_tiled = (fb->modifier == DRM_FORMAT_MOD_SAMSUNG_64_32_TILE);

 luma_addr[0] = exynos_drm_fb_dma_addr(fb, 0);
 chroma_addr[0] = exynos_drm_fb_dma_addr(fb, 1);

 if (test_bit(MXR_BIT_INTERLACE, &ctx->flags)) {
  if (is_tiled) {
   luma_addr[1] = luma_addr[0] + 0x40;
   chroma_addr[1] = chroma_addr[0] + 0x40;
  } else {
   luma_addr[1] = luma_addr[0] + fb->pitches[0];
   chroma_addr[1] = chroma_addr[0] + fb->pitches[1];
  }
 } else {
  luma_addr[1] = 0;
  chroma_addr[1] = 0;
 }

 spin_lock_irqsave(&ctx->reg_slock, flags);


 val = (test_bit(MXR_BIT_INTERLACE, &ctx->flags) ? ~0 : 0);
 vp_reg_writemask(ctx, VP_MODE, val, VP_MODE_LINE_SKIP);


 val = (is_nv21 ? VP_MODE_NV21 : VP_MODE_NV12);
 val |= (is_tiled ? VP_MODE_MEM_TILED : VP_MODE_MEM_LINEAR);
 vp_reg_writemask(ctx, VP_MODE, val, VP_MODE_FMT_MASK);


 vp_reg_write(ctx, VP_IMG_SIZE_Y, VP_IMG_HSIZE(fb->pitches[0]) |
  VP_IMG_VSIZE(fb->height));

 vp_reg_write(ctx, VP_IMG_SIZE_C, VP_IMG_HSIZE(fb->pitches[1]) |
  VP_IMG_VSIZE(fb->height / 2));

 vp_reg_write(ctx, VP_SRC_WIDTH, state->src.w);
 vp_reg_write(ctx, VP_SRC_H_POSITION,
   VP_SRC_H_POSITION_VAL(state->src.x));
 vp_reg_write(ctx, VP_DST_WIDTH, state->crtc.w);
 vp_reg_write(ctx, VP_DST_H_POSITION, state->crtc.x);

 if (test_bit(MXR_BIT_INTERLACE, &ctx->flags)) {
  vp_reg_write(ctx, VP_SRC_HEIGHT, state->src.h / 2);
  vp_reg_write(ctx, VP_SRC_V_POSITION, state->src.y / 2);
  vp_reg_write(ctx, VP_DST_HEIGHT, state->crtc.h / 2);
  vp_reg_write(ctx, VP_DST_V_POSITION, state->crtc.y / 2);
 } else {
  vp_reg_write(ctx, VP_SRC_HEIGHT, state->src.h);
  vp_reg_write(ctx, VP_SRC_V_POSITION, state->src.y);
  vp_reg_write(ctx, VP_DST_HEIGHT, state->crtc.h);
  vp_reg_write(ctx, VP_DST_V_POSITION, state->crtc.y);
 }

 vp_reg_write(ctx, VP_H_RATIO, state->h_ratio);
 vp_reg_write(ctx, VP_V_RATIO, state->v_ratio);

 vp_reg_write(ctx, VP_ENDIAN_MODE, VP_ENDIAN_MODE_LITTLE);


 vp_reg_write(ctx, VP_TOP_Y_PTR, luma_addr[0]);
 vp_reg_write(ctx, VP_BOT_Y_PTR, luma_addr[1]);
 vp_reg_write(ctx, VP_TOP_C_PTR, chroma_addr[0]);
 vp_reg_write(ctx, VP_BOT_C_PTR, chroma_addr[1]);

 mixer_cfg_layer(ctx, plane->index, priority, 1);
 mixer_cfg_vp_blend(ctx, state->base.alpha);

 spin_unlock_irqrestore(&ctx->reg_slock, flags);

 mixer_regs_dump(ctx);
 vp_regs_dump(ctx);
}
