
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct pp_hwmgr {int dummy; } ;
struct TYPE_5__ {int usVCEStateTableOffset; } ;
struct TYPE_4__ {int ucNumEntries; } ;
typedef TYPE_1__ ATOM_Tonga_VCE_State_Table ;
typedef TYPE_2__ ATOM_Tonga_POWERPLAYTABLE ;


 TYPE_2__* get_powerplay_table (struct pp_hwmgr*) ;
 int le16_to_cpu (int ) ;

__attribute__((used)) static int ppt_get_num_of_vce_state_table_entries_v1_0(struct pp_hwmgr *hwmgr)
{
 const ATOM_Tonga_POWERPLAYTABLE *pp_table = get_powerplay_table(hwmgr);
 const ATOM_Tonga_VCE_State_Table *vce_state_table;


 if (pp_table == ((void*)0))
  return 0;

 vce_state_table = (void *)pp_table +
   le16_to_cpu(pp_table->usVCEStateTableOffset);

 return vce_state_table->ucNumEntries;
}
