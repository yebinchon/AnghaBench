
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct dw_mipi_dsi_rockchip {scalar_t__ devcnt; int dmd; int dev; } ;


 int component_del (int ,int *) ;
 int dw_mipi_dsi_remove (int ) ;
 int dw_mipi_dsi_rockchip_ops ;
 struct dw_mipi_dsi_rockchip* platform_get_drvdata (struct platform_device*) ;

__attribute__((used)) static int dw_mipi_dsi_rockchip_remove(struct platform_device *pdev)
{
 struct dw_mipi_dsi_rockchip *dsi = platform_get_drvdata(pdev);

 if (dsi->devcnt == 0)
  component_del(dsi->dev, &dw_mipi_dsi_rockchip_ops);

 dw_mipi_dsi_remove(dsi->dmd);

 return 0;
}
