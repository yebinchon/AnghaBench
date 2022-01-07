
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct a6xx_gmu {int idle_level; } ;


 int GMU_IDLE_STATE_IFPC ;
 int GMU_IDLE_STATE_SPTP ;
 int REG_A6XX_GPU_GMU_CX_GMU_RPMH_POWER_STATE ;
 int a6xx_gmu_gx_is_on (struct a6xx_gmu*) ;
 int gmu_read (struct a6xx_gmu*,int ) ;

__attribute__((used)) static bool a6xx_gmu_check_idle_level(struct a6xx_gmu *gmu)
{
 u32 val;
 int local = gmu->idle_level;


 if (gmu->idle_level == GMU_IDLE_STATE_SPTP)
  local = GMU_IDLE_STATE_IFPC;

 val = gmu_read(gmu, REG_A6XX_GPU_GMU_CX_GMU_RPMH_POWER_STATE);

 if (val == local) {
  if (gmu->idle_level != GMU_IDLE_STATE_IFPC ||
   !a6xx_gmu_gx_is_on(gmu))
   return 1;
 }

 return 0;
}
