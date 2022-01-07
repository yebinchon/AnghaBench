
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct etnaviv_gpu {scalar_t__ clk_bus; scalar_t__ clk_core; scalar_t__ clk_shader; scalar_t__ clk_reg; } ;


 int clk_disable_unprepare (scalar_t__) ;
 int clk_prepare_enable (scalar_t__) ;

__attribute__((used)) static int etnaviv_gpu_clk_enable(struct etnaviv_gpu *gpu)
{
 int ret;

 if (gpu->clk_reg) {
  ret = clk_prepare_enable(gpu->clk_reg);
  if (ret)
   return ret;
 }

 if (gpu->clk_bus) {
  ret = clk_prepare_enable(gpu->clk_bus);
  if (ret)
   return ret;
 }

 if (gpu->clk_core) {
  ret = clk_prepare_enable(gpu->clk_core);
  if (ret)
   goto disable_clk_bus;
 }

 if (gpu->clk_shader) {
  ret = clk_prepare_enable(gpu->clk_shader);
  if (ret)
   goto disable_clk_core;
 }

 return 0;

disable_clk_core:
 if (gpu->clk_core)
  clk_disable_unprepare(gpu->clk_core);
disable_clk_bus:
 if (gpu->clk_bus)
  clk_disable_unprepare(gpu->clk_bus);

 return ret;
}
