
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct exynos_drm_ipp {struct drm_device* drm_dev; } ;
struct fimc_context {int num_formats; int formats; struct drm_device* drm_dev; struct exynos_drm_ipp ipp; } ;
struct drm_device {int dummy; } ;
struct device {int dummy; } ;


 int DRM_EXYNOS_IPP_CAP_CONVERT ;
 int DRM_EXYNOS_IPP_CAP_CROP ;
 int DRM_EXYNOS_IPP_CAP_ROTATE ;
 int DRM_EXYNOS_IPP_CAP_SCALE ;
 struct fimc_context* dev_get_drvdata (struct device*) ;
 int dev_info (struct device*,char*) ;
 int exynos_drm_ipp_register (struct device*,struct exynos_drm_ipp*,int *,int,int ,int ,char*) ;
 int exynos_drm_register_dma (struct drm_device*,struct device*) ;
 int ipp_funcs ;

__attribute__((used)) static int fimc_bind(struct device *dev, struct device *master, void *data)
{
 struct fimc_context *ctx = dev_get_drvdata(dev);
 struct drm_device *drm_dev = data;
 struct exynos_drm_ipp *ipp = &ctx->ipp;

 ctx->drm_dev = drm_dev;
 ipp->drm_dev = drm_dev;
 exynos_drm_register_dma(drm_dev, dev);

 exynos_drm_ipp_register(dev, ipp, &ipp_funcs,
   DRM_EXYNOS_IPP_CAP_CROP | DRM_EXYNOS_IPP_CAP_ROTATE |
   DRM_EXYNOS_IPP_CAP_SCALE | DRM_EXYNOS_IPP_CAP_CONVERT,
   ctx->formats, ctx->num_formats, "fimc");

 dev_info(dev, "The exynos fimc has been probed successfully\n");

 return 0;
}
