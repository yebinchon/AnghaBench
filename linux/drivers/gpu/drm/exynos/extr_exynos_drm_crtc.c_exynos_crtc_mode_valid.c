
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct exynos_drm_crtc {TYPE_1__* ops; } ;
struct drm_display_mode {int dummy; } ;
struct drm_crtc {int dummy; } ;
typedef enum drm_mode_status { ____Placeholder_drm_mode_status } drm_mode_status ;
struct TYPE_2__ {int (* mode_valid ) (struct exynos_drm_crtc*,struct drm_display_mode const*) ;} ;


 int MODE_OK ;
 int stub1 (struct exynos_drm_crtc*,struct drm_display_mode const*) ;
 struct exynos_drm_crtc* to_exynos_crtc (struct drm_crtc*) ;

__attribute__((used)) static enum drm_mode_status exynos_crtc_mode_valid(struct drm_crtc *crtc,
 const struct drm_display_mode *mode)
{
 struct exynos_drm_crtc *exynos_crtc = to_exynos_crtc(crtc);

 if (exynos_crtc->ops->mode_valid)
  return exynos_crtc->ops->mode_valid(exynos_crtc, mode);

 return MODE_OK;
}
