
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hdlcd_drm_private {int clk; } ;
struct drm_crtc_state {int dummy; } ;
struct drm_crtc {int dummy; } ;


 int HDLCD_REG_COMMAND ;
 int clk_prepare_enable (int ) ;
 struct hdlcd_drm_private* crtc_to_hdlcd_priv (struct drm_crtc*) ;
 int drm_crtc_vblank_on (struct drm_crtc*) ;
 int hdlcd_crtc_mode_set_nofb (struct drm_crtc*) ;
 int hdlcd_write (struct hdlcd_drm_private*,int ,int) ;

__attribute__((used)) static void hdlcd_crtc_atomic_enable(struct drm_crtc *crtc,
         struct drm_crtc_state *old_state)
{
 struct hdlcd_drm_private *hdlcd = crtc_to_hdlcd_priv(crtc);

 clk_prepare_enable(hdlcd->clk);
 hdlcd_crtc_mode_set_nofb(crtc);
 hdlcd_write(hdlcd, HDLCD_REG_COMMAND, 1);
 drm_crtc_vblank_on(crtc);
}
