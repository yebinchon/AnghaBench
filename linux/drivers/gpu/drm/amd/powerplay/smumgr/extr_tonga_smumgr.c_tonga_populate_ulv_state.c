
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pp_hwmgr {int dummy; } ;
struct SMU72_Discrete_DpmTable {int Ulv; } ;


 int tonga_populate_ulv_level (struct pp_hwmgr*,int *) ;

__attribute__((used)) static int tonga_populate_ulv_state(struct pp_hwmgr *hwmgr,
  struct SMU72_Discrete_DpmTable *table)
{
 return tonga_populate_ulv_level(hwmgr, &table->Ulv);
}
