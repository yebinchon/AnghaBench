
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hdlcd_drm_private {int crtc; } ;
struct drm_plane {int dummy; } ;
struct drm_device {struct hdlcd_drm_private* dev_private; } ;


 scalar_t__ IS_ERR (struct drm_plane*) ;
 int PTR_ERR (struct drm_plane*) ;
 int drm_crtc_helper_add (int *,int *) ;
 int drm_crtc_init_with_planes (struct drm_device*,int *,struct drm_plane*,int *,int *,int *) ;
 int hdlcd_crtc_funcs ;
 int hdlcd_crtc_helper_funcs ;
 struct drm_plane* hdlcd_plane_init (struct drm_device*) ;

int hdlcd_setup_crtc(struct drm_device *drm)
{
 struct hdlcd_drm_private *hdlcd = drm->dev_private;
 struct drm_plane *primary;
 int ret;

 primary = hdlcd_plane_init(drm);
 if (IS_ERR(primary))
  return PTR_ERR(primary);

 ret = drm_crtc_init_with_planes(drm, &hdlcd->crtc, primary, ((void*)0),
     &hdlcd_crtc_funcs, ((void*)0));
 if (ret)
  return ret;

 drm_crtc_helper_add(&hdlcd->crtc, &hdlcd_crtc_helper_funcs);
 return 0;
}
