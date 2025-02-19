
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_display_mode {int dummy; } ;
struct drm_crtc {int dummy; } ;
struct atmel_hlcdc_crtc {int dc; } ;
typedef enum drm_mode_status { ____Placeholder_drm_mode_status } drm_mode_status ;


 int atmel_hlcdc_dc_mode_valid (int ,struct drm_display_mode const*) ;
 struct atmel_hlcdc_crtc* drm_crtc_to_atmel_hlcdc_crtc (struct drm_crtc*) ;

__attribute__((used)) static enum drm_mode_status
atmel_hlcdc_crtc_mode_valid(struct drm_crtc *c,
       const struct drm_display_mode *mode)
{
 struct atmel_hlcdc_crtc *crtc = drm_crtc_to_atmel_hlcdc_crtc(c);

 return atmel_hlcdc_dc_mode_valid(crtc->dc, mode);
}
