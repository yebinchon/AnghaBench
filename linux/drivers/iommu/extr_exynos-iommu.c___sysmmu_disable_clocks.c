
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sysmmu_drvdata {int clk_master; int clk; int pclk; int aclk; } ;


 int clk_disable_unprepare (int ) ;

__attribute__((used)) static void __sysmmu_disable_clocks(struct sysmmu_drvdata *data)
{
 clk_disable_unprepare(data->aclk);
 clk_disable_unprepare(data->pclk);
 clk_disable_unprepare(data->clk);
 clk_disable_unprepare(data->clk_master);
}
