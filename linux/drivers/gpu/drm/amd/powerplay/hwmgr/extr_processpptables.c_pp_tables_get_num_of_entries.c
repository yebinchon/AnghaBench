
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct pp_hwmgr {int dummy; } ;
struct TYPE_5__ {int ucTableFormatRevision; } ;
struct TYPE_7__ {scalar_t__ ucNumStates; int usStateArrayOffset; TYPE_1__ sHeader; } ;
struct TYPE_6__ {scalar_t__ ucNumEntries; } ;
typedef TYPE_2__ StateArray ;
typedef TYPE_3__ ATOM_PPLIB_POWERPLAYTABLE ;


 TYPE_3__* get_powerplay_table (struct pp_hwmgr*) ;
 scalar_t__ le16_to_cpu (int ) ;

int pp_tables_get_num_of_entries(struct pp_hwmgr *hwmgr,
         unsigned long *num_of_entries)
{
 const StateArray *pstate_arrays;
 const ATOM_PPLIB_POWERPLAYTABLE *powerplay_table = get_powerplay_table(hwmgr);

 if (powerplay_table == ((void*)0))
  return -1;

 if (powerplay_table->sHeader.ucTableFormatRevision >= 6) {
  pstate_arrays = (StateArray *)(((unsigned long)powerplay_table) +
     le16_to_cpu(powerplay_table->usStateArrayOffset));

  *num_of_entries = (unsigned long)(pstate_arrays->ucNumEntries);
 } else
  *num_of_entries = (unsigned long)(powerplay_table->ucNumStates);

 return 0;
}
