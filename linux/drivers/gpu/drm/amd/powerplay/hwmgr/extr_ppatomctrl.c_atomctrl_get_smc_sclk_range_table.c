
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct pp_hwmgr {int adev; } ;
struct pp_atom_ctrl_sclk_range_table {TYPE_1__* entry; } ;
struct TYPE_6__ {int ucSclkEntryNum; TYPE_2__* asSclkFcwRangeEntry; } ;
struct TYPE_5__ {int ucRcw_trans_lower; int ucFcw_trans_upper; int ucFcw_pcc; int ucPostdiv; int ucVco_setting; } ;
struct TYPE_4__ {void* usRcw_trans_lower; void* usFcw_trans_upper; void* usFcw_pcc; int ucPostdiv; int ucVco_setting; } ;
typedef TYPE_3__ ATOM_SMU_INFO_V2_1 ;


 int DATA ;
 int GetIndexIntoMasterTable (int ,int ) ;
 int SMU_Info ;
 void* le16_to_cpu (int ) ;
 scalar_t__ smu_atom_get_data_table (int ,int ,int *,int *,int *) ;

int atomctrl_get_smc_sclk_range_table(struct pp_hwmgr *hwmgr, struct pp_atom_ctrl_sclk_range_table *table)
{

 int i;
 u8 frev, crev;
 u16 size;

 ATOM_SMU_INFO_V2_1 *psmu_info =
  (ATOM_SMU_INFO_V2_1 *)smu_atom_get_data_table(hwmgr->adev,
   GetIndexIntoMasterTable(DATA, SMU_Info),
   &size, &frev, &crev);


 for (i = 0; i < psmu_info->ucSclkEntryNum; i++) {
  table->entry[i].ucVco_setting = psmu_info->asSclkFcwRangeEntry[i].ucVco_setting;
  table->entry[i].ucPostdiv = psmu_info->asSclkFcwRangeEntry[i].ucPostdiv;
  table->entry[i].usFcw_pcc =
   le16_to_cpu(psmu_info->asSclkFcwRangeEntry[i].ucFcw_pcc);
  table->entry[i].usFcw_trans_upper =
   le16_to_cpu(psmu_info->asSclkFcwRangeEntry[i].ucFcw_trans_upper);
  table->entry[i].usRcw_trans_lower =
   le16_to_cpu(psmu_info->asSclkFcwRangeEntry[i].ucRcw_trans_lower);
 }

 return 0;
}
