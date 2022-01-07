
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_display_mode {unsigned int crtc_hdisplay; unsigned int crtc_htotal; unsigned int crtc_hblank_start; unsigned int crtc_hblank_end; unsigned int crtc_hsync_start; unsigned int crtc_hsync_end; int flags; } ;


 int DRM_MODE_FLAG_INTERLACE ;

__attribute__((used)) static bool gcp_default_phase_possible(int pipe_bpp,
           const struct drm_display_mode *mode)
{
 unsigned int pixels_per_group;

 switch (pipe_bpp) {
 case 30:

  pixels_per_group = 4;
  break;
 case 36:

  pixels_per_group = 2;
  break;
 case 48:

  pixels_per_group = 1;
  break;
 default:

  return 0;
 }

 return mode->crtc_hdisplay % pixels_per_group == 0 &&
  mode->crtc_htotal % pixels_per_group == 0 &&
  mode->crtc_hblank_start % pixels_per_group == 0 &&
  mode->crtc_hblank_end % pixels_per_group == 0 &&
  mode->crtc_hsync_start % pixels_per_group == 0 &&
  mode->crtc_hsync_end % pixels_per_group == 0 &&
  ((mode->flags & DRM_MODE_FLAG_INTERLACE) == 0 ||
   mode->crtc_htotal/2 % pixels_per_group == 0);
}
