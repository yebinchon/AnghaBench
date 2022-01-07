
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct malidp_hw_device {int pxlclk; } ;
struct malidp_drm {struct malidp_hw_device* dev; } ;
struct drm_display_mode {int crtc_clock; } ;
struct drm_crtc {int dummy; } ;
typedef enum drm_mode_status { ____Placeholder_drm_mode_status } drm_mode_status ;


 int DRM_DEBUG_DRIVER (char*,long) ;
 int MODE_NOCLOCK ;
 int MODE_OK ;
 long clk_round_rate (int ,long) ;
 struct malidp_drm* crtc_to_malidp_device (struct drm_crtc*) ;

__attribute__((used)) static enum drm_mode_status malidp_crtc_mode_valid(struct drm_crtc *crtc,
         const struct drm_display_mode *mode)
{
 struct malidp_drm *malidp = crtc_to_malidp_device(crtc);
 struct malidp_hw_device *hwdev = malidp->dev;





 long rate, req_rate = mode->crtc_clock * 1000;

 if (req_rate) {
  rate = clk_round_rate(hwdev->pxlclk, req_rate);
  if (rate != req_rate) {
   DRM_DEBUG_DRIVER("pxlclk doesn't support %ld Hz\n",
      req_rate);
   return MODE_NOCLOCK;
  }
 }

 return MODE_OK;
}
