
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtk_drm_crtc {int base; } ;
struct drm_plane {int dummy; } ;
struct drm_device {int dummy; } ;


 int drm_crtc_cleanup (int *) ;
 int drm_crtc_helper_add (int *,int *) ;
 int drm_crtc_init_with_planes (struct drm_device*,int *,struct drm_plane*,struct drm_plane*,int *,int *) ;
 int mtk_crtc_funcs ;
 int mtk_crtc_helper_funcs ;

__attribute__((used)) static int mtk_drm_crtc_init(struct drm_device *drm,
        struct mtk_drm_crtc *mtk_crtc,
        struct drm_plane *primary,
        struct drm_plane *cursor, unsigned int pipe)
{
 int ret;

 ret = drm_crtc_init_with_planes(drm, &mtk_crtc->base, primary, cursor,
     &mtk_crtc_funcs, ((void*)0));
 if (ret)
  goto err_cleanup_crtc;

 drm_crtc_helper_add(&mtk_crtc->base, &mtk_crtc_helper_funcs);

 return 0;

err_cleanup_crtc:
 drm_crtc_cleanup(&mtk_crtc->base);
 return ret;
}
