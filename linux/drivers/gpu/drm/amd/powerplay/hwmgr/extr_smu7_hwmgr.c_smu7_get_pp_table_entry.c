
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pp_power_state {int dummy; } ;
struct pp_hwmgr {scalar_t__ pp_table_version; } ;


 scalar_t__ PP_TABLE_V0 ;
 scalar_t__ PP_TABLE_V1 ;
 int smu7_get_pp_table_entry_v0 (struct pp_hwmgr*,unsigned long,struct pp_power_state*) ;
 int smu7_get_pp_table_entry_v1 (struct pp_hwmgr*,unsigned long,struct pp_power_state*) ;

__attribute__((used)) static int smu7_get_pp_table_entry(struct pp_hwmgr *hwmgr,
  unsigned long entry_index, struct pp_power_state *state)
{
 if (hwmgr->pp_table_version == PP_TABLE_V0)
  return smu7_get_pp_table_entry_v0(hwmgr, entry_index, state);
 else if (hwmgr->pp_table_version == PP_TABLE_V1)
  return smu7_get_pp_table_entry_v1(hwmgr, entry_index, state);

 return 0;
}
