
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct a6xx_gmu {int dummy; } ;


 int a6xx_gmu_check_idle_level (struct a6xx_gmu*) ;
 int spin_until (int ) ;

int a6xx_gmu_wait_for_idle(struct a6xx_gmu *gmu)
{
 return spin_until(a6xx_gmu_check_idle_level(gmu));
}
