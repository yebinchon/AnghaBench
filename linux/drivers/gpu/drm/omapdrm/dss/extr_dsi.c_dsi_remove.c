
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;
struct dsi_data {int vdds_dsi_enabled; int * vdds_dsi_reg; } ;


 int component_del (int *,int *) ;
 int dsi_component_ops ;
 int dsi_uninit_output (struct dsi_data*) ;
 int of_platform_depopulate (int *) ;
 struct dsi_data* platform_get_drvdata (struct platform_device*) ;
 int pm_runtime_disable (int *) ;
 int regulator_disable (int *) ;

__attribute__((used)) static int dsi_remove(struct platform_device *pdev)
{
 struct dsi_data *dsi = platform_get_drvdata(pdev);

 component_del(&pdev->dev, &dsi_component_ops);

 dsi_uninit_output(dsi);

 of_platform_depopulate(&pdev->dev);

 pm_runtime_disable(&pdev->dev);

 if (dsi->vdds_dsi_reg != ((void*)0) && dsi->vdds_dsi_enabled) {
  regulator_disable(dsi->vdds_dsi_reg);
  dsi->vdds_dsi_enabled = 0;
 }

 return 0;
}
