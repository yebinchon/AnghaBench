
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msm_gpu {scalar_t__ rbbmtimer_clk; scalar_t__ core_clk; int grp_clks; int nr_clocks; } ;


 int clk_bulk_disable_unprepare (int ,int ) ;
 int clk_set_rate (scalar_t__,int) ;

__attribute__((used)) static int disable_clk(struct msm_gpu *gpu)
{
 clk_bulk_disable_unprepare(gpu->nr_clocks, gpu->grp_clks);






 if (gpu->core_clk)
  clk_set_rate(gpu->core_clk, 27000000);

 if (gpu->rbbmtimer_clk)
  clk_set_rate(gpu->rbbmtimer_clk, 0);

 return 0;
}
