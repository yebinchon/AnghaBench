
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct exynos_drm_crtc {TYPE_1__* ops; } ;
struct drm_crtc {int dummy; } ;
struct TYPE_2__ {int (* disable_vblank ) (struct exynos_drm_crtc*) ;} ;


 int stub1 (struct exynos_drm_crtc*) ;
 struct exynos_drm_crtc* to_exynos_crtc (struct drm_crtc*) ;

__attribute__((used)) static void exynos_drm_crtc_disable_vblank(struct drm_crtc *crtc)
{
 struct exynos_drm_crtc *exynos_crtc = to_exynos_crtc(crtc);

 if (exynos_crtc->ops->disable_vblank)
  exynos_crtc->ops->disable_vblank(exynos_crtc);
}
