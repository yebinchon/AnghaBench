
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct a6xx_gmu {int nr_clocks; int clocks; int core_clk; int dev; } ;


 int devm_clk_bulk_get_all (int ,int *) ;
 int msm_clk_bulk_get_clock (int ,int,char*) ;

__attribute__((used)) static int a6xx_gmu_clocks_probe(struct a6xx_gmu *gmu)
{
 int ret = devm_clk_bulk_get_all(gmu->dev, &gmu->clocks);

 if (ret < 1)
  return ret;

 gmu->nr_clocks = ret;

 gmu->core_clk = msm_clk_bulk_get_clock(gmu->clocks,
  gmu->nr_clocks, "gmu");

 return 0;
}
