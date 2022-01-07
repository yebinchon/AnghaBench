
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct pp_hwmgr {int dummy; } ;
struct TYPE_3__ {int numEntries; } ;
typedef TYPE_1__ ATOM_PPLIB_VCE_State_Table ;
typedef int ATOM_PPLIB_POWERPLAYTABLE ;


 int * get_powerplay_table (struct pp_hwmgr*) ;
 TYPE_1__* get_vce_state_table (struct pp_hwmgr*,int const*) ;

__attribute__((used)) static int get_number_of_vce_state_table_entries(
        struct pp_hwmgr *hwmgr)
{
 const ATOM_PPLIB_POWERPLAYTABLE *table =
          get_powerplay_table(hwmgr);
 const ATOM_PPLIB_VCE_State_Table *vce_table =
        get_vce_state_table(hwmgr, table);

 if (vce_table)
  return vce_table->numEntries;

 return 0;
}
