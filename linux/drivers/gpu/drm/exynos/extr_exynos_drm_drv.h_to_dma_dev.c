
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct exynos_drm_private {struct device* dma_dev; } ;
struct drm_device {struct exynos_drm_private* dev_private; } ;
struct device {int dummy; } ;



__attribute__((used)) static inline struct device *to_dma_dev(struct drm_device *dev)
{
 struct exynos_drm_private *priv = dev->dev_private;

 return priv->dma_dev;
}
