
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pp_hwmgr {int dummy; } ;
struct SMU75_Discrete_DpmTable {int Ulv; } ;


 int vegam_populate_ulv_level (struct pp_hwmgr*,int *) ;

__attribute__((used)) static int vegam_populate_ulv_state(struct pp_hwmgr *hwmgr,
  struct SMU75_Discrete_DpmTable *table)
{
 return vegam_populate_ulv_level(hwmgr, &table->Ulv);
}
