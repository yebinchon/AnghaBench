
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pp_hwmgr {int dummy; } ;
typedef int SMU71_Discrete_Ulv ;


 int iceland_populate_ulv_level (struct pp_hwmgr*,int *) ;

__attribute__((used)) static int iceland_populate_ulv_state(struct pp_hwmgr *hwmgr,
   SMU71_Discrete_Ulv *ulv_level)
{
 return iceland_populate_ulv_level(hwmgr, ulv_level);
}
