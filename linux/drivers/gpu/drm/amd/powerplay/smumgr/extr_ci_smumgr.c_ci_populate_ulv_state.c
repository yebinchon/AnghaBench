
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pp_hwmgr {int dummy; } ;
typedef int SMU7_Discrete_Ulv ;


 int ci_populate_ulv_level (struct pp_hwmgr*,int *) ;

__attribute__((used)) static int ci_populate_ulv_state(struct pp_hwmgr *hwmgr,
   SMU7_Discrete_Ulv *ulv_level)
{
 return ci_populate_ulv_level(hwmgr, ulv_level);
}
