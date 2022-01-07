
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hdlcd_drm_private {int dummy; } ;
struct drm_crtc {int dummy; } ;


 int HDLCD_REG_COMMAND ;
 struct hdlcd_drm_private* crtc_to_hdlcd_priv (struct drm_crtc*) ;
 int drm_crtc_cleanup (struct drm_crtc*) ;
 int hdlcd_write (struct hdlcd_drm_private*,int ,int ) ;

__attribute__((used)) static void hdlcd_crtc_cleanup(struct drm_crtc *crtc)
{
 struct hdlcd_drm_private *hdlcd = crtc_to_hdlcd_priv(crtc);


 hdlcd_write(hdlcd, HDLCD_REG_COMMAND, 0);
 drm_crtc_cleanup(crtc);
}
