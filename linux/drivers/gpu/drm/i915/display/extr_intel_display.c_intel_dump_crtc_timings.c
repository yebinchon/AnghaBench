
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_display_mode {int flags; int type; int crtc_vtotal; int crtc_vsync_end; int crtc_vsync_start; int crtc_vdisplay; int crtc_htotal; int crtc_hsync_end; int crtc_hsync_start; int crtc_hdisplay; int crtc_clock; } ;


 int DRM_DEBUG_KMS (char*,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ) ;

__attribute__((used)) static void intel_dump_crtc_timings(const struct drm_display_mode *mode)
{
 DRM_DEBUG_KMS("crtc timings: %d %d %d %d %d %d %d %d %d, "
        "type: 0x%x flags: 0x%x\n",
        mode->crtc_clock,
        mode->crtc_hdisplay, mode->crtc_hsync_start,
        mode->crtc_hsync_end, mode->crtc_htotal,
        mode->crtc_vdisplay, mode->crtc_vsync_start,
        mode->crtc_vsync_end, mode->crtc_vtotal,
        mode->type, mode->flags);
}
