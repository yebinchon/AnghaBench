
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct exynos_drm_plane {int dummy; } ;
struct exynos_drm_crtc {TYPE_1__* ops; } ;
struct drm_plane_state {int crtc; } ;
struct drm_plane {int dummy; } ;
struct TYPE_2__ {int (* disable_plane ) (struct exynos_drm_crtc*,struct exynos_drm_plane*) ;} ;


 int stub1 (struct exynos_drm_crtc*,struct exynos_drm_plane*) ;
 struct exynos_drm_crtc* to_exynos_crtc (int ) ;
 struct exynos_drm_plane* to_exynos_plane (struct drm_plane*) ;

__attribute__((used)) static void exynos_plane_atomic_disable(struct drm_plane *plane,
     struct drm_plane_state *old_state)
{
 struct exynos_drm_plane *exynos_plane = to_exynos_plane(plane);
 struct exynos_drm_crtc *exynos_crtc = to_exynos_crtc(old_state->crtc);

 if (!old_state->crtc)
  return;

 if (exynos_crtc->ops->disable_plane)
  exynos_crtc->ops->disable_plane(exynos_crtc, exynos_plane);
}
