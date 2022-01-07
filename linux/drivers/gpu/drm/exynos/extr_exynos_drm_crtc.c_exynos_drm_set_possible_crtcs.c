
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct exynos_drm_crtc {int base; } ;
struct drm_encoder {int possible_crtcs; int dev; } ;
typedef enum exynos_drm_output_type { ____Placeholder_exynos_drm_output_type } exynos_drm_output_type ;


 scalar_t__ IS_ERR (struct exynos_drm_crtc*) ;
 int PTR_ERR (struct exynos_drm_crtc*) ;
 int drm_crtc_mask (int *) ;
 struct exynos_drm_crtc* exynos_drm_crtc_get_by_type (int ,int) ;

int exynos_drm_set_possible_crtcs(struct drm_encoder *encoder,
  enum exynos_drm_output_type out_type)
{
 struct exynos_drm_crtc *crtc = exynos_drm_crtc_get_by_type(encoder->dev,
      out_type);

 if (IS_ERR(crtc))
  return PTR_ERR(crtc);

 encoder->possible_crtcs = drm_crtc_mask(&crtc->base);

 return 0;
}
