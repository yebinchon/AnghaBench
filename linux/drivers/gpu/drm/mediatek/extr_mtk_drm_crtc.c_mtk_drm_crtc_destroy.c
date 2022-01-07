
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtk_drm_crtc {int mutex; } ;
struct drm_crtc {int dummy; } ;


 int drm_crtc_cleanup (struct drm_crtc*) ;
 int mtk_disp_mutex_put (int ) ;
 struct mtk_drm_crtc* to_mtk_crtc (struct drm_crtc*) ;

__attribute__((used)) static void mtk_drm_crtc_destroy(struct drm_crtc *crtc)
{
 struct mtk_drm_crtc *mtk_crtc = to_mtk_crtc(crtc);

 mtk_disp_mutex_put(mtk_crtc->mutex);

 drm_crtc_cleanup(crtc);
}
