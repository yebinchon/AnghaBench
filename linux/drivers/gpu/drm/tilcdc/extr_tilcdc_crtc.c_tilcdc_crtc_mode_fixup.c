
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tilcdc_crtc {int simulate_vesa_sync; } ;
struct drm_display_mode {int flags; scalar_t__ hsync_start; scalar_t__ hsync_end; scalar_t__ hskew; } ;
struct drm_crtc {int dummy; } ;


 int DRM_MODE_FLAG_HSKEW ;
 int DRM_MODE_FLAG_NHSYNC ;
 int DRM_MODE_FLAG_PHSYNC ;
 struct tilcdc_crtc* to_tilcdc_crtc (struct drm_crtc*) ;

__attribute__((used)) static bool tilcdc_crtc_mode_fixup(struct drm_crtc *crtc,
  const struct drm_display_mode *mode,
  struct drm_display_mode *adjusted_mode)
{
 struct tilcdc_crtc *tilcdc_crtc = to_tilcdc_crtc(crtc);

 if (!tilcdc_crtc->simulate_vesa_sync)
  return 1;







 adjusted_mode->hskew = mode->hsync_end - mode->hsync_start;
 adjusted_mode->flags |= DRM_MODE_FLAG_HSKEW;

 if (mode->flags & DRM_MODE_FLAG_NHSYNC) {
  adjusted_mode->flags |= DRM_MODE_FLAG_PHSYNC;
  adjusted_mode->flags &= ~DRM_MODE_FLAG_NHSYNC;
 } else {
  adjusted_mode->flags |= DRM_MODE_FLAG_NHSYNC;
  adjusted_mode->flags &= ~DRM_MODE_FLAG_PHSYNC;
 }

 return 1;
}
