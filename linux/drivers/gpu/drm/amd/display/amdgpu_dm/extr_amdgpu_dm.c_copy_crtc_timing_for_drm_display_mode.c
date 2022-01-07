
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_display_mode {int crtc_vtotal; int crtc_vsync_end; int crtc_vsync_start; int crtc_vblank_end; int crtc_vblank_start; int crtc_hskew; int crtc_htotal; int crtc_hsync_end; int crtc_hsync_start; int crtc_hblank_end; int crtc_hblank_start; int crtc_clock; int crtc_vdisplay; int crtc_hdisplay; } ;



__attribute__((used)) static void
copy_crtc_timing_for_drm_display_mode(const struct drm_display_mode *src_mode,
          struct drm_display_mode *dst_mode)
{
 dst_mode->crtc_hdisplay = src_mode->crtc_hdisplay;
 dst_mode->crtc_vdisplay = src_mode->crtc_vdisplay;
 dst_mode->crtc_clock = src_mode->crtc_clock;
 dst_mode->crtc_hblank_start = src_mode->crtc_hblank_start;
 dst_mode->crtc_hblank_end = src_mode->crtc_hblank_end;
 dst_mode->crtc_hsync_start = src_mode->crtc_hsync_start;
 dst_mode->crtc_hsync_end = src_mode->crtc_hsync_end;
 dst_mode->crtc_htotal = src_mode->crtc_htotal;
 dst_mode->crtc_hskew = src_mode->crtc_hskew;
 dst_mode->crtc_vblank_start = src_mode->crtc_vblank_start;
 dst_mode->crtc_vblank_end = src_mode->crtc_vblank_end;
 dst_mode->crtc_vsync_start = src_mode->crtc_vsync_start;
 dst_mode->crtc_vsync_end = src_mode->crtc_vsync_end;
 dst_mode->crtc_vtotal = src_mode->crtc_vtotal;
}
