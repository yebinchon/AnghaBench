
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hdlcd_drm_private {int clk; } ;
struct drm_crtc_state {int dummy; } ;
struct drm_crtc {int dummy; } ;


 int HDLCD_REG_COMMAND ;
 int clk_disable_unprepare (int ) ;
 struct hdlcd_drm_private* crtc_to_hdlcd_priv (struct drm_crtc*) ;
 int drm_crtc_vblank_off (struct drm_crtc*) ;
 int hdlcd_write (struct hdlcd_drm_private*,int ,int ) ;

__attribute__((used)) static void hdlcd_crtc_atomic_disable(struct drm_crtc *crtc,
          struct drm_crtc_state *old_state)
{
 struct hdlcd_drm_private *hdlcd = crtc_to_hdlcd_priv(crtc);

 drm_crtc_vblank_off(crtc);
 hdlcd_write(hdlcd, HDLCD_REG_COMMAND, 0);
 clk_disable_unprepare(hdlcd->clk);
}
