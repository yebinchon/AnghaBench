
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint16_t ;
typedef scalar_t__ u16 ;
struct pp_hwmgr {int adev; } ;
struct TYPE_3__ {int ucTableFormatRevision; int ucTableContentRevision; int usStructureSize; } ;
struct TYPE_4__ {int usLeakageBinArrayOffset; int usElbVDDC_IdArrayOffset; int usElbVDDC_LevelArrayOffset; int ucElbVDDC_Num; int ucLeakageBinNum; int usElbVDDCI_IdArrayOffset; int usElbVDDCI_LevelArrayOffset; int ucElbVDDCI_Num; TYPE_1__ asHeader; } ;
typedef TYPE_2__ ATOM_ASIC_PROFILING_INFO_V2_1 ;


 int ASIC_ProfilingInfo ;
 int DATA ;
 int EINVAL ;
 int GetIndexIntoMasterTable (int ,int ) ;
 scalar_t__ smu_atom_get_data_table (int ,int,int *,int *,int *) ;

int atomctrl_get_leakage_vddc_base_on_leakage(struct pp_hwmgr *hwmgr,
     uint16_t *vddc, uint16_t *vddci,
     uint16_t virtual_voltage_id,
     uint16_t efuse_voltage_id)
{
 int i, j;
 int ix;
 u16 *leakage_bin, *vddc_id_buf, *vddc_buf, *vddci_id_buf, *vddci_buf;
 ATOM_ASIC_PROFILING_INFO_V2_1 *profile;

 *vddc = 0;
 *vddci = 0;

 ix = GetIndexIntoMasterTable(DATA, ASIC_ProfilingInfo);

 profile = (ATOM_ASIC_PROFILING_INFO_V2_1 *)
   smu_atom_get_data_table(hwmgr->adev,
     ix,
     ((void*)0), ((void*)0), ((void*)0));
 if (!profile)
  return -EINVAL;

 if ((profile->asHeader.ucTableFormatRevision >= 2) &&
  (profile->asHeader.ucTableContentRevision >= 1) &&
  (profile->asHeader.usStructureSize >= sizeof(ATOM_ASIC_PROFILING_INFO_V2_1))) {
  leakage_bin = (u16 *)((char *)profile + profile->usLeakageBinArrayOffset);
  vddc_id_buf = (u16 *)((char *)profile + profile->usElbVDDC_IdArrayOffset);
  vddc_buf = (u16 *)((char *)profile + profile->usElbVDDC_LevelArrayOffset);
  if (profile->ucElbVDDC_Num > 0) {
   for (i = 0; i < profile->ucElbVDDC_Num; i++) {
    if (vddc_id_buf[i] == virtual_voltage_id) {
     for (j = 0; j < profile->ucLeakageBinNum; j++) {
      if (efuse_voltage_id <= leakage_bin[j]) {
       *vddc = vddc_buf[j * profile->ucElbVDDC_Num + i];
       break;
      }
     }
     break;
    }
   }
  }

  vddci_id_buf = (u16 *)((char *)profile + profile->usElbVDDCI_IdArrayOffset);
  vddci_buf = (u16 *)((char *)profile + profile->usElbVDDCI_LevelArrayOffset);
  if (profile->ucElbVDDCI_Num > 0) {
   for (i = 0; i < profile->ucElbVDDCI_Num; i++) {
    if (vddci_id_buf[i] == virtual_voltage_id) {
     for (j = 0; j < profile->ucLeakageBinNum; j++) {
      if (efuse_voltage_id <= leakage_bin[j]) {
       *vddci = vddci_buf[j * profile->ucElbVDDCI_Num + i];
       break;
      }
     }
     break;
    }
   }
  }
 }

 return 0;
}
