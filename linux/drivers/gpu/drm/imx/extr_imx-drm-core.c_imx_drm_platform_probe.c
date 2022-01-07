
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;


 int DMA_BIT_MASK (int) ;
 int compare_of ;
 int dma_set_coherent_mask (int *,int ) ;
 int drm_of_component_probe (int *,int ,int *) ;
 int imx_drm_ops ;

__attribute__((used)) static int imx_drm_platform_probe(struct platform_device *pdev)
{
 int ret = drm_of_component_probe(&pdev->dev, compare_of, &imx_drm_ops);

 if (!ret)
  ret = dma_set_coherent_mask(&pdev->dev, DMA_BIT_MASK(32));

 return ret;
}
