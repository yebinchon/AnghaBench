
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_device {int dummy; } ;
struct ast_crtc {int base; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int ast_crtc_funcs ;
 int ast_crtc_helper_funcs ;
 int drm_crtc_helper_add (int *,int *) ;
 int drm_crtc_init (struct drm_device*,int *,int *) ;
 int drm_mode_crtc_set_gamma_size (int *,int) ;
 struct ast_crtc* kzalloc (int,int ) ;

__attribute__((used)) static int ast_crtc_init(struct drm_device *dev)
{
 struct ast_crtc *crtc;

 crtc = kzalloc(sizeof(struct ast_crtc), GFP_KERNEL);
 if (!crtc)
  return -ENOMEM;

 drm_crtc_init(dev, &crtc->base, &ast_crtc_funcs);
 drm_mode_crtc_set_gamma_size(&crtc->base, 256);
 drm_crtc_helper_add(&crtc->base, &ast_crtc_helper_funcs);
 return 0;
}
