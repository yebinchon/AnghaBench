
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;
struct component_match {int dummy; } ;


 int add_display_components (int *,struct component_match**) ;
 int add_gpu_components (int *,struct component_match**) ;
 int component_master_add_with_match (int *,int *,struct component_match*) ;
 int dma_set_mask_and_coherent (int *,int ) ;
 scalar_t__ get_mdp_ver (struct platform_device*) ;
 int msm_drm_ops ;
 int of_platform_depopulate (int *) ;

__attribute__((used)) static int msm_pdev_probe(struct platform_device *pdev)
{
 struct component_match *match = ((void*)0);
 int ret;

 if (get_mdp_ver(pdev)) {
  ret = add_display_components(&pdev->dev, &match);
  if (ret)
   return ret;
 }

 ret = add_gpu_components(&pdev->dev, &match);
 if (ret)
  goto fail;




 ret = dma_set_mask_and_coherent(&pdev->dev, ~0);
 if (ret)
  goto fail;

 ret = component_master_add_with_match(&pdev->dev, &msm_drm_ops, match);
 if (ret)
  goto fail;

 return 0;

fail:
 of_platform_depopulate(&pdev->dev);
 return ret;
}
