
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct exynos_drm_crtc {int dummy; } ;
struct drm_crtc {int dummy; } ;


 int drm_crtc_cleanup (struct drm_crtc*) ;
 int kfree (struct exynos_drm_crtc*) ;
 struct exynos_drm_crtc* to_exynos_crtc (struct drm_crtc*) ;

__attribute__((used)) static void exynos_drm_crtc_destroy(struct drm_crtc *crtc)
{
 struct exynos_drm_crtc *exynos_crtc = to_exynos_crtc(crtc);

 drm_crtc_cleanup(crtc);
 kfree(exynos_crtc);
}
