
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dw_mipi_dsi_rockchip {int pllref_clk; int dmd; scalar_t__ is_slave; } ;
struct device {int dummy; } ;


 int clk_disable_unprepare (int ) ;
 struct dw_mipi_dsi_rockchip* dev_get_drvdata (struct device*) ;
 int dw_mipi_dsi_unbind (int ) ;

__attribute__((used)) static void dw_mipi_dsi_rockchip_unbind(struct device *dev,
     struct device *master,
     void *data)
{
 struct dw_mipi_dsi_rockchip *dsi = dev_get_drvdata(dev);

 if (dsi->is_slave)
  return;

 dw_mipi_dsi_unbind(dsi->dmd);

 clk_disable_unprepare(dsi->pllref_clk);
}
