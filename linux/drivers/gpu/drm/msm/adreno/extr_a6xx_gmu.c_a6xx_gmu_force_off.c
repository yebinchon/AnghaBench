
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct a6xx_gmu {int dummy; } ;


 int a6xx_gmu_irq_disable (struct a6xx_gmu*) ;
 int a6xx_gmu_rpmh_off (struct a6xx_gmu*) ;
 int a6xx_hfi_stop (struct a6xx_gmu*) ;
 int a6xx_sptprac_disable (struct a6xx_gmu*) ;

__attribute__((used)) static void a6xx_gmu_force_off(struct a6xx_gmu *gmu)
{

 a6xx_hfi_stop(gmu);


 a6xx_gmu_irq_disable(gmu);


 a6xx_sptprac_disable(gmu);


 a6xx_gmu_rpmh_off(gmu);
}
