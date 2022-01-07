
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct drm_display_mode {int crtc_hsync_end; int crtc_hsync_start; int crtc_hblank_end; int crtc_hblank_start; int crtc_hdisplay; } ;



__attribute__((used)) static void
centre_horizontally(struct drm_display_mode *adjusted_mode,
      int width)
{
 u32 border, sync_pos, blank_width, sync_width;


 sync_width = adjusted_mode->crtc_hsync_end - adjusted_mode->crtc_hsync_start;
 blank_width = adjusted_mode->crtc_hblank_end - adjusted_mode->crtc_hblank_start;
 sync_pos = (blank_width - sync_width + 1) / 2;

 border = (adjusted_mode->crtc_hdisplay - width + 1) / 2;
 border += border & 1;

 adjusted_mode->crtc_hdisplay = width;
 adjusted_mode->crtc_hblank_start = width + border;
 adjusted_mode->crtc_hblank_end = adjusted_mode->crtc_hblank_start + blank_width;

 adjusted_mode->crtc_hsync_start = adjusted_mode->crtc_hblank_start + sync_pos;
 adjusted_mode->crtc_hsync_end = adjusted_mode->crtc_hsync_start + sync_width;
}
