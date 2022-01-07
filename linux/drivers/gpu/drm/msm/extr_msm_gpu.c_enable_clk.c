
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msm_gpu {int fast_rate; int grp_clks; int nr_clocks; scalar_t__ rbbmtimer_clk; scalar_t__ core_clk; } ;


 int clk_bulk_prepare_enable (int ,int ) ;
 int clk_set_rate (scalar_t__,int) ;

__attribute__((used)) static int enable_clk(struct msm_gpu *gpu)
{
 if (gpu->core_clk && gpu->fast_rate)
  clk_set_rate(gpu->core_clk, gpu->fast_rate);


 if (gpu->rbbmtimer_clk)
  clk_set_rate(gpu->rbbmtimer_clk, 19200000);

 return clk_bulk_prepare_enable(gpu->nr_clocks, gpu->grp_clks);
}
