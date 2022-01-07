
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msm_gpu {scalar_t__ ebi1_clk; } ;


 int clk_disable_unprepare (scalar_t__) ;

__attribute__((used)) static int disable_axi(struct msm_gpu *gpu)
{
 if (gpu->ebi1_clk)
  clk_disable_unprepare(gpu->ebi1_clk);
 return 0;
}
