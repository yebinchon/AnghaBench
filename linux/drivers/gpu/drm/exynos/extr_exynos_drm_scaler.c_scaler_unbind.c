
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct exynos_drm_ipp {int dummy; } ;
struct scaler_context {int dev; int drm_dev; struct exynos_drm_ipp ipp; } ;
struct device {int dummy; } ;


 struct scaler_context* dev_get_drvdata (struct device*) ;
 int exynos_drm_ipp_unregister (struct device*,struct exynos_drm_ipp*) ;
 int exynos_drm_unregister_dma (int ,int ) ;

__attribute__((used)) static void scaler_unbind(struct device *dev, struct device *master,
   void *data)
{
 struct scaler_context *scaler = dev_get_drvdata(dev);
 struct exynos_drm_ipp *ipp = &scaler->ipp;

 exynos_drm_ipp_unregister(dev, ipp);
 exynos_drm_unregister_dma(scaler->drm_dev, scaler->dev);
}
