
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct exynos_drm_crtc {TYPE_1__* ops; } ;
struct drm_crtc_state {int enable; } ;
struct drm_crtc {int dummy; } ;
struct TYPE_2__ {int (* atomic_check ) (struct exynos_drm_crtc*,struct drm_crtc_state*) ;} ;


 int stub1 (struct exynos_drm_crtc*,struct drm_crtc_state*) ;
 struct exynos_drm_crtc* to_exynos_crtc (struct drm_crtc*) ;

__attribute__((used)) static int exynos_crtc_atomic_check(struct drm_crtc *crtc,
         struct drm_crtc_state *state)
{
 struct exynos_drm_crtc *exynos_crtc = to_exynos_crtc(crtc);

 if (!state->enable)
  return 0;

 if (exynos_crtc->ops->atomic_check)
  return exynos_crtc->ops->atomic_check(exynos_crtc, state);

 return 0;
}
