
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct exynos_drm_plane {int dummy; } ;
struct exynos_drm_crtc {TYPE_1__* ops; } ;
struct drm_plane_state {int crtc; } ;
struct drm_plane {struct drm_plane_state* state; } ;
struct TYPE_2__ {int (* update_plane ) (struct exynos_drm_crtc*,struct exynos_drm_plane*) ;} ;


 int stub1 (struct exynos_drm_crtc*,struct exynos_drm_plane*) ;
 struct exynos_drm_crtc* to_exynos_crtc (int ) ;
 struct exynos_drm_plane* to_exynos_plane (struct drm_plane*) ;

__attribute__((used)) static void exynos_plane_atomic_update(struct drm_plane *plane,
           struct drm_plane_state *old_state)
{
 struct drm_plane_state *state = plane->state;
 struct exynos_drm_crtc *exynos_crtc = to_exynos_crtc(state->crtc);
 struct exynos_drm_plane *exynos_plane = to_exynos_plane(plane);

 if (!state->crtc)
  return;

 if (exynos_crtc->ops->update_plane)
  exynos_crtc->ops->update_plane(exynos_crtc, exynos_plane);
}
