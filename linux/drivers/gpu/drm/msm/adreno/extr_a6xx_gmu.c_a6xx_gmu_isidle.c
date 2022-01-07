
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct a6xx_gmu {int initialized; } ;


 int A6XX_GPU_GMU_AO_GPU_CX_BUSY_STATUS_GPUBUSYIGNAHB ;
 int REG_A6XX_GPU_GMU_AO_GPU_CX_BUSY_STATUS ;
 int gmu_read (struct a6xx_gmu*,int ) ;

bool a6xx_gmu_isidle(struct a6xx_gmu *gmu)
{
 u32 reg;

 if (!gmu->initialized)
  return 1;

 reg = gmu_read(gmu, REG_A6XX_GPU_GMU_AO_GPU_CX_BUSY_STATUS);

 if (reg & A6XX_GPU_GMU_AO_GPU_CX_BUSY_STATUS_GPUBUSYIGNAHB)
  return 0;

 return 1;
}
