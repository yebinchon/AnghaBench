
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qxl_crtc {int cursor_bo; } ;
struct drm_crtc {int dummy; } ;


 int drm_crtc_cleanup (struct drm_crtc*) ;
 int kfree (struct qxl_crtc*) ;
 int qxl_bo_unref (int *) ;
 struct qxl_crtc* to_qxl_crtc (struct drm_crtc*) ;

__attribute__((used)) static void qxl_crtc_destroy(struct drm_crtc *crtc)
{
 struct qxl_crtc *qxl_crtc = to_qxl_crtc(crtc);

 qxl_bo_unref(&qxl_crtc->cursor_bo);
 drm_crtc_cleanup(crtc);
 kfree(qxl_crtc);
}
