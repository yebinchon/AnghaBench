
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_display_mode {int crtc_hdisplay; int crtc_vdisplay; } ;


 int CRTC_STEREO_DOUBLE_ONLY ;
 int drm_mode_set_crtcinfo (struct drm_display_mode*,int ) ;

void drm_mode_get_hv_timing(const struct drm_display_mode *mode,
       int *hdisplay, int *vdisplay)
{
 struct drm_display_mode adjusted = *mode;

 drm_mode_set_crtcinfo(&adjusted, CRTC_STEREO_DOUBLE_ONLY);
 *hdisplay = adjusted.crtc_hdisplay;
 *vdisplay = adjusted.crtc_vdisplay;
}
