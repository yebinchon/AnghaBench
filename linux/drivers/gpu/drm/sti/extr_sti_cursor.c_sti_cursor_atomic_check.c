
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct sti_plane {int dummy; } ;
struct TYPE_4__ {int size; scalar_t__ base; int paddr; } ;
struct sti_cursor {int width; int height; TYPE_1__ pixmap; int dev; } ;
struct drm_plane_state {int crtc_x; int crtc_y; int src_w; int src_h; int crtc_h; int crtc_w; int state; struct drm_framebuffer* fb; struct drm_crtc* crtc; } ;
struct TYPE_6__ {int id; } ;
struct drm_plane {TYPE_3__ base; } ;
struct drm_framebuffer {int dummy; } ;
struct drm_display_mode {scalar_t__ crtc_vdisplay; scalar_t__ crtc_hdisplay; } ;
struct drm_crtc_state {struct drm_display_mode mode; } ;
struct TYPE_5__ {int id; } ;
struct drm_crtc {TYPE_2__ base; } ;


 int DRM_DEBUG_KMS (char*,int,int,int,int) ;
 int DRM_ERROR (char*,...) ;
 int EINVAL ;
 int GFP_DMA ;
 int GFP_KERNEL ;
 int STI_CURS_MAX_SIZE ;
 int STI_CURS_MIN_SIZE ;
 int clamp_val (int ,int ,scalar_t__) ;
 scalar_t__ dma_alloc_wc (int ,int,int *,int) ;
 int dma_free_wc (int ,int,scalar_t__,int ) ;
 struct drm_crtc_state* drm_atomic_get_crtc_state (int ,struct drm_crtc*) ;
 int drm_fb_cma_get_gem_obj (struct drm_framebuffer*,int ) ;
 int sti_mixer_to_str (int ) ;
 int sti_plane_to_str (struct sti_plane*) ;
 struct sti_cursor* to_sti_cursor (struct sti_plane*) ;
 int to_sti_mixer (struct drm_crtc*) ;
 struct sti_plane* to_sti_plane (struct drm_plane*) ;

__attribute__((used)) static int sti_cursor_atomic_check(struct drm_plane *drm_plane,
       struct drm_plane_state *state)
{
 struct sti_plane *plane = to_sti_plane(drm_plane);
 struct sti_cursor *cursor = to_sti_cursor(plane);
 struct drm_crtc *crtc = state->crtc;
 struct drm_framebuffer *fb = state->fb;
 struct drm_crtc_state *crtc_state;
 struct drm_display_mode *mode;
 int dst_x, dst_y, dst_w, dst_h;
 int src_w, src_h;


 if (!crtc || !fb)
  return 0;

 crtc_state = drm_atomic_get_crtc_state(state->state, crtc);
 mode = &crtc_state->mode;
 dst_x = state->crtc_x;
 dst_y = state->crtc_y;
 dst_w = clamp_val(state->crtc_w, 0, mode->crtc_hdisplay - dst_x);
 dst_h = clamp_val(state->crtc_h, 0, mode->crtc_vdisplay - dst_y);

 src_w = state->src_w >> 16;
 src_h = state->src_h >> 16;

 if (src_w < STI_CURS_MIN_SIZE ||
     src_h < STI_CURS_MIN_SIZE ||
     src_w > STI_CURS_MAX_SIZE ||
     src_h > STI_CURS_MAX_SIZE) {
  DRM_ERROR("Invalid cursor size (%dx%d)\n",
    src_w, src_h);
  return -EINVAL;
 }


 if (!cursor->pixmap.base ||
     (cursor->width != src_w) ||
     (cursor->height != src_h)) {
  cursor->width = src_w;
  cursor->height = src_h;

  if (cursor->pixmap.base)
   dma_free_wc(cursor->dev, cursor->pixmap.size,
        cursor->pixmap.base, cursor->pixmap.paddr);

  cursor->pixmap.size = cursor->width * cursor->height;

  cursor->pixmap.base = dma_alloc_wc(cursor->dev,
         cursor->pixmap.size,
         &cursor->pixmap.paddr,
         GFP_KERNEL | GFP_DMA);
  if (!cursor->pixmap.base) {
   DRM_ERROR("Failed to allocate memory for pixmap\n");
   return -EINVAL;
  }
 }

 if (!drm_fb_cma_get_gem_obj(fb, 0)) {
  DRM_ERROR("Can't get CMA GEM object for fb\n");
  return -EINVAL;
 }

 DRM_DEBUG_KMS("CRTC:%d (%s) drm plane:%d (%s)\n",
        crtc->base.id, sti_mixer_to_str(to_sti_mixer(crtc)),
        drm_plane->base.id, sti_plane_to_str(plane));
 DRM_DEBUG_KMS("(%dx%d)@(%d,%d)\n", dst_w, dst_h, dst_x, dst_y);

 return 0;
}
