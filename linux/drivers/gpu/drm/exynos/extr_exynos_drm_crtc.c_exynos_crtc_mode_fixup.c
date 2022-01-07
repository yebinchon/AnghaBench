
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct exynos_drm_crtc {TYPE_1__* ops; } ;
struct drm_display_mode {int dummy; } ;
struct drm_crtc {int dummy; } ;
struct TYPE_2__ {int (* mode_fixup ) (struct exynos_drm_crtc*,struct drm_display_mode const*,struct drm_display_mode*) ;} ;


 int stub1 (struct exynos_drm_crtc*,struct drm_display_mode const*,struct drm_display_mode*) ;
 struct exynos_drm_crtc* to_exynos_crtc (struct drm_crtc*) ;

__attribute__((used)) static bool exynos_crtc_mode_fixup(struct drm_crtc *crtc,
  const struct drm_display_mode *mode,
  struct drm_display_mode *adjusted_mode)
{
 struct exynos_drm_crtc *exynos_crtc = to_exynos_crtc(crtc);

 if (exynos_crtc->ops->mode_fixup)
  return exynos_crtc->ops->mode_fixup(exynos_crtc, mode,
    adjusted_mode);

 return 1;
}
