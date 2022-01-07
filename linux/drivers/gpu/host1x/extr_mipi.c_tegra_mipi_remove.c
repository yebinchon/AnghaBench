
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tegra_mipi {int clk; } ;
struct platform_device {int dummy; } ;


 int clk_unprepare (int ) ;
 struct tegra_mipi* platform_get_drvdata (struct platform_device*) ;

__attribute__((used)) static int tegra_mipi_remove(struct platform_device *pdev)
{
 struct tegra_mipi *mipi = platform_get_drvdata(pdev);

 clk_unprepare(mipi->clk);

 return 0;
}
