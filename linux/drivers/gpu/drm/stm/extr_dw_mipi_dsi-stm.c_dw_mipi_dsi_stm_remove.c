
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct dw_mipi_dsi_stm {int vdd_supply; int pllref_clk; int dsi; } ;


 int clk_disable_unprepare (int ) ;
 int dw_mipi_dsi_remove (int ) ;
 struct dw_mipi_dsi_stm* platform_get_drvdata (struct platform_device*) ;
 int regulator_disable (int ) ;

__attribute__((used)) static int dw_mipi_dsi_stm_remove(struct platform_device *pdev)
{
 struct dw_mipi_dsi_stm *dsi = platform_get_drvdata(pdev);

 dw_mipi_dsi_remove(dsi->dsi);
 clk_disable_unprepare(dsi->pllref_clk);
 regulator_disable(dsi->vdd_supply);

 return 0;
}
