
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct exynos_drm_ipp {int dummy; } ;
struct fimc_context {struct exynos_drm_ipp ipp; } ;
struct drm_device {int dummy; } ;
struct device {int dummy; } ;


 struct fimc_context* dev_get_drvdata (struct device*) ;
 int exynos_drm_ipp_unregister (struct device*,struct exynos_drm_ipp*) ;
 int exynos_drm_unregister_dma (struct drm_device*,struct device*) ;

__attribute__((used)) static void fimc_unbind(struct device *dev, struct device *master,
   void *data)
{
 struct fimc_context *ctx = dev_get_drvdata(dev);
 struct drm_device *drm_dev = data;
 struct exynos_drm_ipp *ipp = &ctx->ipp;

 exynos_drm_ipp_unregister(dev, ipp);
 exynos_drm_unregister_dma(drm_dev, dev);
}
