
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;
struct mtk_drm_private {int * comp_node; int mutex_node; } ;


 int DDP_COMPONENT_ID_MAX ;
 int component_master_del (int *,int *) ;
 int mtk_drm_ops ;
 int of_node_put (int ) ;
 struct mtk_drm_private* platform_get_drvdata (struct platform_device*) ;
 int pm_runtime_disable (int *) ;

__attribute__((used)) static int mtk_drm_remove(struct platform_device *pdev)
{
 struct mtk_drm_private *private = platform_get_drvdata(pdev);
 int i;

 component_master_del(&pdev->dev, &mtk_drm_ops);
 pm_runtime_disable(&pdev->dev);
 of_node_put(private->mutex_node);
 for (i = 0; i < DDP_COMPONENT_ID_MAX; i++)
  of_node_put(private->comp_node[i]);

 return 0;
}
