
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sti_plane {int dummy; } ;
struct sti_hqvdp {int vtg_registered; int clk_pix_main; int vtg_nb; int vtg; int xp70_initialized; } ;
struct drm_plane_state {int crtc_x; int crtc_y; int src_x; int src_y; int src_w; int src_h; int crtc_h; int crtc_w; int state; struct drm_framebuffer* fb; struct drm_crtc* crtc; } ;
struct TYPE_4__ {int id; } ;
struct drm_plane {TYPE_2__ base; } ;
struct drm_framebuffer {int dummy; } ;
struct drm_display_mode {scalar_t__ clock; scalar_t__ vdisplay; scalar_t__ hdisplay; } ;
struct drm_crtc_state {struct drm_display_mode mode; } ;
struct TYPE_3__ {int id; } ;
struct drm_crtc {TYPE_1__ base; } ;


 int ALIGN (int,int) ;
 int DRM_DEBUG_KMS (char*,int ,int,int,int,...) ;
 int DRM_ERROR (char*,...) ;
 int EINVAL ;
 int MAX_HEIGHT ;
 int MAX_WIDTH ;
 int MIN_HEIGHT ;
 int MIN_WIDTH ;
 int clamp_val (int ,int ,scalar_t__) ;
 int clk_disable_unprepare (int ) ;
 scalar_t__ clk_prepare_enable (int ) ;
 struct drm_crtc_state* drm_atomic_get_crtc_state (int ,struct drm_crtc*) ;
 int drm_fb_cma_get_gem_obj (struct drm_framebuffer*,int ) ;
 int sti_hqvdp_check_hw_scaling (struct sti_hqvdp*,struct drm_display_mode*,int,int,int,int) ;
 int sti_hqvdp_start_xp70 (struct sti_hqvdp*) ;
 int sti_mixer_to_str (int ) ;
 int sti_plane_to_str (struct sti_plane*) ;
 scalar_t__ sti_vtg_register_client (int ,int *,struct drm_crtc*) ;
 struct sti_hqvdp* to_sti_hqvdp (struct sti_plane*) ;
 int to_sti_mixer (struct drm_crtc*) ;
 struct sti_plane* to_sti_plane (struct drm_plane*) ;

__attribute__((used)) static int sti_hqvdp_atomic_check(struct drm_plane *drm_plane,
      struct drm_plane_state *state)
{
 struct sti_plane *plane = to_sti_plane(drm_plane);
 struct sti_hqvdp *hqvdp = to_sti_hqvdp(plane);
 struct drm_crtc *crtc = state->crtc;
 struct drm_framebuffer *fb = state->fb;
 struct drm_crtc_state *crtc_state;
 struct drm_display_mode *mode;
 int dst_x, dst_y, dst_w, dst_h;
 int src_x, src_y, src_w, src_h;


 if (!crtc || !fb)
  return 0;

 crtc_state = drm_atomic_get_crtc_state(state->state, crtc);
 mode = &crtc_state->mode;
 dst_x = state->crtc_x;
 dst_y = state->crtc_y;
 dst_w = clamp_val(state->crtc_w, 0, mode->hdisplay - dst_x);
 dst_h = clamp_val(state->crtc_h, 0, mode->vdisplay - dst_y);

 src_x = state->src_x >> 16;
 src_y = state->src_y >> 16;
 src_w = state->src_w >> 16;
 src_h = state->src_h >> 16;

 if (mode->clock && !sti_hqvdp_check_hw_scaling(hqvdp, mode,
             src_w, src_h,
             dst_w, dst_h)) {
  DRM_ERROR("Scaling beyond HW capabilities\n");
  return -EINVAL;
 }

 if (!drm_fb_cma_get_gem_obj(fb, 0)) {
  DRM_ERROR("Can't get CMA GEM object for fb\n");
  return -EINVAL;
 }





 dst_w = ALIGN(dst_w, 2);
 dst_h = ALIGN(dst_h, 2);

 if ((src_w > MAX_WIDTH) || (src_w < MIN_WIDTH) ||
     (src_h > MAX_HEIGHT) || (src_h < MIN_HEIGHT) ||
     (dst_w > MAX_WIDTH) || (dst_w < MIN_WIDTH) ||
     (dst_h > MAX_HEIGHT) || (dst_h < MIN_HEIGHT)) {
  DRM_ERROR("Invalid in/out size %dx%d -> %dx%d\n",
     src_w, src_h,
     dst_w, dst_h);
  return -EINVAL;
 }

 if (!hqvdp->xp70_initialized)

  sti_hqvdp_start_xp70(hqvdp);

 if (!hqvdp->vtg_registered) {

  if (clk_prepare_enable(hqvdp->clk_pix_main)) {
   DRM_ERROR("Failed to prepare/enable pix main clk\n");
   return -EINVAL;
  }


  if (sti_vtg_register_client(hqvdp->vtg,
         &hqvdp->vtg_nb,
         crtc)) {
   DRM_ERROR("Cannot register VTG notifier\n");
   clk_disable_unprepare(hqvdp->clk_pix_main);
   return -EINVAL;
  }
  hqvdp->vtg_registered = 1;
 }

 DRM_DEBUG_KMS("CRTC:%d (%s) drm plane:%d (%s)\n",
        crtc->base.id, sti_mixer_to_str(to_sti_mixer(crtc)),
        drm_plane->base.id, sti_plane_to_str(plane));
 DRM_DEBUG_KMS("%s dst=(%dx%d)@(%d,%d) - src=(%dx%d)@(%d,%d)\n",
        sti_plane_to_str(plane),
        dst_w, dst_h, dst_x, dst_y,
        src_w, src_h, src_x, src_y);

 return 0;
}
