
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msm_gpu {scalar_t__ ebi1_clk; } ;


 int clk_prepare_enable (scalar_t__) ;

__attribute__((used)) static int enable_axi(struct msm_gpu *gpu)
{
 if (gpu->ebi1_clk)
  clk_prepare_enable(gpu->ebi1_clk);
 return 0;
}
