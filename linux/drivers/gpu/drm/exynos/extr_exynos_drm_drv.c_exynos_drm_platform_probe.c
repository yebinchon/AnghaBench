
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int coherent_dma_mask; } ;
struct platform_device {TYPE_1__ dev; } ;
struct component_match {int dummy; } ;


 int DMA_BIT_MASK (int) ;
 scalar_t__ IS_ERR (struct component_match*) ;
 int PTR_ERR (struct component_match*) ;
 int component_master_add_with_match (TYPE_1__*,int *,struct component_match*) ;
 struct component_match* exynos_drm_match_add (TYPE_1__*) ;
 int exynos_drm_ops ;

__attribute__((used)) static int exynos_drm_platform_probe(struct platform_device *pdev)
{
 struct component_match *match;

 pdev->dev.coherent_dma_mask = DMA_BIT_MASK(32);

 match = exynos_drm_match_add(&pdev->dev);
 if (IS_ERR(match))
  return PTR_ERR(match);

 return component_master_add_with_match(&pdev->dev, &exynos_drm_ops,
            match);
}
