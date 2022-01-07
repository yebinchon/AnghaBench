
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct platform_device {int dummy; } ;
struct TYPE_2__ {int clk; } ;
struct exynos_ppmu {TYPE_1__ ppmu; } ;


 int clk_disable_unprepare (int ) ;
 struct exynos_ppmu* platform_get_drvdata (struct platform_device*) ;

__attribute__((used)) static int exynos_ppmu_remove(struct platform_device *pdev)
{
 struct exynos_ppmu *info = platform_get_drvdata(pdev);

 clk_disable_unprepare(info->ppmu.clk);

 return 0;
}
