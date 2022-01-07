
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;
struct exynos_dsi {int in_bridge_node; } ;


 int component_del (int *,int *) ;
 int exynos_dsi_component_ops ;
 int of_node_put (int ) ;
 struct exynos_dsi* platform_get_drvdata (struct platform_device*) ;
 int pm_runtime_disable (int *) ;

__attribute__((used)) static int exynos_dsi_remove(struct platform_device *pdev)
{
 struct exynos_dsi *dsi = platform_get_drvdata(pdev);

 of_node_put(dsi->in_bridge_node);

 pm_runtime_disable(&pdev->dev);

 component_del(&pdev->dev, &exynos_dsi_component_ops);

 return 0;
}
