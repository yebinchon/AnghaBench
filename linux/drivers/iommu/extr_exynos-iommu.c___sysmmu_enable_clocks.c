
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sysmmu_drvdata {int aclk; int pclk; int clk; int clk_master; } ;


 int BUG_ON (int ) ;
 int clk_prepare_enable (int ) ;

__attribute__((used)) static void __sysmmu_enable_clocks(struct sysmmu_drvdata *data)
{
 BUG_ON(clk_prepare_enable(data->clk_master));
 BUG_ON(clk_prepare_enable(data->clk));
 BUG_ON(clk_prepare_enable(data->pclk));
 BUG_ON(clk_prepare_enable(data->aclk));
}
