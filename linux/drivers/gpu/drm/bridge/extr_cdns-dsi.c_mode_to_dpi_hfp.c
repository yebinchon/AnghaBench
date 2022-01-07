
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_display_mode {unsigned int hsync_start; unsigned int hdisplay; unsigned int crtc_hsync_start; unsigned int crtc_hdisplay; } ;



__attribute__((used)) static unsigned int mode_to_dpi_hfp(const struct drm_display_mode *mode,
        bool mode_valid_check)
{
 if (mode_valid_check)
  return mode->hsync_start - mode->hdisplay;

 return mode->crtc_hsync_start - mode->crtc_hdisplay;
}
