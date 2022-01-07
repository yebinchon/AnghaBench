
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hdlcd_drm_private {int clk; } ;
struct drm_display_mode {int clock; } ;
struct drm_crtc {int dummy; } ;
typedef enum drm_mode_status { ____Placeholder_drm_mode_status } drm_mode_status ;


 int MODE_NOCLOCK ;
 int MODE_OK ;
 int abs (long) ;
 long clk_round_rate (int ,long) ;
 struct hdlcd_drm_private* crtc_to_hdlcd_priv (struct drm_crtc*) ;

__attribute__((used)) static enum drm_mode_status hdlcd_crtc_mode_valid(struct drm_crtc *crtc,
  const struct drm_display_mode *mode)
{
 struct hdlcd_drm_private *hdlcd = crtc_to_hdlcd_priv(crtc);
 long rate, clk_rate = mode->clock * 1000;

 rate = clk_round_rate(hdlcd->clk, clk_rate);

 if (abs(rate - clk_rate) * 1000 > clk_rate) {

  return MODE_NOCLOCK;
 }

 return MODE_OK;
}
