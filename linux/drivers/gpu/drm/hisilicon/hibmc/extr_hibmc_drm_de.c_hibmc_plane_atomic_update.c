
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct hibmc_framebuffer {int obj; } ;
struct hibmc_drm_private {scalar_t__ mmio; } ;
struct drm_plane_state {TYPE_3__* fb; } ;
struct drm_plane {TYPE_1__* dev; struct drm_plane_state* state; } ;
struct drm_gem_vram_object {int dummy; } ;
typedef scalar_t__ s64 ;
struct TYPE_6__ {int width; TYPE_2__* format; } ;
struct TYPE_5__ {int* cpp; } ;
struct TYPE_4__ {struct hibmc_drm_private* dev_private; } ;


 int DRM_ERROR (char*,int) ;
 int DRM_GEM_VRAM_PL_FLAG_VRAM ;
 scalar_t__ HIBMC_CRT_DISP_CTL ;
 int HIBMC_CRT_DISP_CTL_FORMAT ;
 int HIBMC_CRT_DISP_CTL_FORMAT_MASK ;
 scalar_t__ HIBMC_CRT_FB_ADDRESS ;
 scalar_t__ HIBMC_CRT_FB_WIDTH ;
 int HIBMC_CRT_FB_WIDTH_OFFS ;
 int HIBMC_CRT_FB_WIDTH_WIDTH ;
 int HIBMC_FIELD (int ,int) ;
 void* PADDING (int,unsigned int) ;
 struct drm_gem_vram_object* drm_gem_vram_of_gem (int ) ;
 scalar_t__ drm_gem_vram_offset (struct drm_gem_vram_object*) ;
 int drm_gem_vram_pin (struct drm_gem_vram_object*,int ) ;
 int drm_gem_vram_unpin (struct drm_gem_vram_object*) ;
 int readl (scalar_t__) ;
 struct hibmc_framebuffer* to_hibmc_framebuffer (TYPE_3__*) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static void hibmc_plane_atomic_update(struct drm_plane *plane,
          struct drm_plane_state *old_state)
{
 struct drm_plane_state *state = plane->state;
 u32 reg;
 int ret;
 s64 gpu_addr = 0;
 unsigned int line_l;
 struct hibmc_drm_private *priv = plane->dev->dev_private;
 struct hibmc_framebuffer *hibmc_fb;
 struct drm_gem_vram_object *gbo;

 if (!state->fb)
  return;

 hibmc_fb = to_hibmc_framebuffer(state->fb);
 gbo = drm_gem_vram_of_gem(hibmc_fb->obj);

 ret = drm_gem_vram_pin(gbo, DRM_GEM_VRAM_PL_FLAG_VRAM);
 if (ret) {
  DRM_ERROR("failed to pin bo: %d", ret);
  return;
 }
 gpu_addr = drm_gem_vram_offset(gbo);
 if (gpu_addr < 0) {
  drm_gem_vram_unpin(gbo);
  return;
 }

 writel(gpu_addr, priv->mmio + HIBMC_CRT_FB_ADDRESS);

 reg = state->fb->width * (state->fb->format->cpp[0]);

 reg = PADDING(16, reg);

 line_l = state->fb->width * state->fb->format->cpp[0];
 line_l = PADDING(16, line_l);
 writel(HIBMC_FIELD(HIBMC_CRT_FB_WIDTH_WIDTH, reg) |
        HIBMC_FIELD(HIBMC_CRT_FB_WIDTH_OFFS, line_l),
        priv->mmio + HIBMC_CRT_FB_WIDTH);


 reg = readl(priv->mmio + HIBMC_CRT_DISP_CTL);
 reg &= ~HIBMC_CRT_DISP_CTL_FORMAT_MASK;
 reg |= HIBMC_FIELD(HIBMC_CRT_DISP_CTL_FORMAT,
      state->fb->format->cpp[0] * 8 / 16);
 writel(reg, priv->mmio + HIBMC_CRT_DISP_CTL);
}
