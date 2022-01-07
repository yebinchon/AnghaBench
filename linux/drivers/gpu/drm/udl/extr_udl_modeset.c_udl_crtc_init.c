
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_device {int dummy; } ;
struct drm_crtc {int dummy; } ;
struct drm_connector {int dummy; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int drm_crtc_helper_add (struct drm_crtc*,int *) ;
 int drm_crtc_init (struct drm_device*,struct drm_crtc*,int *) ;
 struct drm_crtc* kzalloc (int,int ) ;
 int udl_crtc_funcs ;
 int udl_helper_funcs ;

__attribute__((used)) static int udl_crtc_init(struct drm_device *dev)
{
 struct drm_crtc *crtc;

 crtc = kzalloc(sizeof(struct drm_crtc) + sizeof(struct drm_connector *), GFP_KERNEL);
 if (crtc == ((void*)0))
  return -ENOMEM;

 drm_crtc_init(dev, crtc, &udl_crtc_funcs);
 drm_crtc_helper_add(crtc, &udl_helper_funcs);

 return 0;
}
