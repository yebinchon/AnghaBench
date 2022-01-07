
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct omap_dss_device {int dummy; } ;
struct drm_display_mode {int dummy; } ;


 int CRTC_INTERLACE_HALVE_V ;
 int DSSDBG (char*) ;
 int EINVAL ;


 int drm_mode_copy (struct drm_display_mode*,int *) ;
 int drm_mode_set_crtcinfo (struct drm_display_mode*,int ) ;
 int drm_mode_set_name (struct drm_display_mode*) ;
 int omap_dss_ntsc_mode ;
 int omap_dss_pal_mode ;
 int venc_get_videomode (struct drm_display_mode*) ;

__attribute__((used)) static int venc_check_timings(struct omap_dss_device *dssdev,
         struct drm_display_mode *mode)
{
 DSSDBG("venc_check_timings\n");

 switch (venc_get_videomode(mode)) {
 case 128:
  drm_mode_copy(mode, &omap_dss_pal_mode);
  break;

 case 129:
  drm_mode_copy(mode, &omap_dss_ntsc_mode);
  break;

 default:
  return -EINVAL;
 }

 drm_mode_set_crtcinfo(mode, CRTC_INTERLACE_HALVE_V);
 drm_mode_set_name(mode);
 return 0;
}
