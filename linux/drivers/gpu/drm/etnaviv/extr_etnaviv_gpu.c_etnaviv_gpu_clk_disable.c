
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct etnaviv_gpu {scalar_t__ clk_reg; scalar_t__ clk_bus; scalar_t__ clk_core; scalar_t__ clk_shader; } ;


 int clk_disable_unprepare (scalar_t__) ;

__attribute__((used)) static int etnaviv_gpu_clk_disable(struct etnaviv_gpu *gpu)
{
 if (gpu->clk_shader)
  clk_disable_unprepare(gpu->clk_shader);
 if (gpu->clk_core)
  clk_disable_unprepare(gpu->clk_core);
 if (gpu->clk_bus)
  clk_disable_unprepare(gpu->clk_bus);
 if (gpu->clk_reg)
  clk_disable_unprepare(gpu->clk_reg);

 return 0;
}
