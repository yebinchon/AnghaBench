
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;
struct mtk_dsi {int dummy; } ;


 int component_del (int *,int *) ;
 int mtk_dsi_component_ops ;
 int mtk_output_dsi_disable (struct mtk_dsi*) ;
 struct mtk_dsi* platform_get_drvdata (struct platform_device*) ;

__attribute__((used)) static int mtk_dsi_remove(struct platform_device *pdev)
{
 struct mtk_dsi *dsi = platform_get_drvdata(pdev);

 mtk_output_dsi_disable(dsi);
 component_del(&pdev->dev, &mtk_dsi_component_ops);

 return 0;
}
