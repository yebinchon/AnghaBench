
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct exynos_nocp {int clk; } ;


 int clk_disable_unprepare (int ) ;
 struct exynos_nocp* platform_get_drvdata (struct platform_device*) ;

__attribute__((used)) static int exynos_nocp_remove(struct platform_device *pdev)
{
 struct exynos_nocp *nocp = platform_get_drvdata(pdev);

 clk_disable_unprepare(nocp->clk);

 return 0;
}
