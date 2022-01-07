
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dpu_core_perf {int * dev; int * catalog; int * core_clk; scalar_t__ max_core_clk_rate; } ;


 int DPU_ERROR (char*) ;

void dpu_core_perf_destroy(struct dpu_core_perf *perf)
{
 if (!perf) {
  DPU_ERROR("invalid parameters\n");
  return;
 }

 perf->max_core_clk_rate = 0;
 perf->core_clk = ((void*)0);
 perf->catalog = ((void*)0);
 perf->dev = ((void*)0);
}
