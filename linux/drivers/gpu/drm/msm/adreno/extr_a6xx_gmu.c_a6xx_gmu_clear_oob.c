
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct a6xx_gmu {int dummy; } ;
typedef enum a6xx_gmu_oob_state { ____Placeholder_a6xx_gmu_oob_state } a6xx_gmu_oob_state ;



 int GMU_OOB_BOOT_SLUMBER_CLEAR ;
 int GMU_OOB_DCVS_CLEAR ;


 int GMU_OOB_GPU_SET_CLEAR ;
 int REG_A6XX_GMU_HOST2GMU_INTR_SET ;
 int gmu_write (struct a6xx_gmu*,int ,int) ;

void a6xx_gmu_clear_oob(struct a6xx_gmu *gmu, enum a6xx_gmu_oob_state state)
{
 switch (state) {
 case 128:
  gmu_write(gmu, REG_A6XX_GMU_HOST2GMU_INTR_SET,
   1 << GMU_OOB_GPU_SET_CLEAR);
  break;
 case 130:
  gmu_write(gmu, REG_A6XX_GMU_HOST2GMU_INTR_SET,
   1 << GMU_OOB_BOOT_SLUMBER_CLEAR);
  break;
 case 129:
  gmu_write(gmu, REG_A6XX_GMU_HOST2GMU_INTR_SET,
   1 << GMU_OOB_DCVS_CLEAR);
  break;
 }
}
