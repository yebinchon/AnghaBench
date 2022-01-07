
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct drm_display_mode {int crtc_vsync_end; int crtc_vsync_start; int crtc_vblank_end; int crtc_vblank_start; int crtc_vdisplay; } ;



__attribute__((used)) static void
centre_vertically(struct drm_display_mode *adjusted_mode,
    int height)
{
 u32 border, sync_pos, blank_width, sync_width;


 sync_width = adjusted_mode->crtc_vsync_end - adjusted_mode->crtc_vsync_start;
 blank_width = adjusted_mode->crtc_vblank_end - adjusted_mode->crtc_vblank_start;
 sync_pos = (blank_width - sync_width + 1) / 2;

 border = (adjusted_mode->crtc_vdisplay - height + 1) / 2;

 adjusted_mode->crtc_vdisplay = height;
 adjusted_mode->crtc_vblank_start = height + border;
 adjusted_mode->crtc_vblank_end = adjusted_mode->crtc_vblank_start + blank_width;

 adjusted_mode->crtc_vsync_start = adjusted_mode->crtc_vblank_start + sync_pos;
 adjusted_mode->crtc_vsync_end = adjusted_mode->crtc_vsync_start + sync_width;
}
