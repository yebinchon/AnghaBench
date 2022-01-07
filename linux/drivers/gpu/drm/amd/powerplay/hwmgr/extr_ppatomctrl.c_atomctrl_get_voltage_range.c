
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct pp_hwmgr {int chip_id; int adev; } ;
struct TYPE_4__ {int ulMinVddc; int ulMaxVddc; } ;
struct TYPE_3__ {int ulMinVddc; int ulMaxVddc; } ;
typedef TYPE_1__ ATOM_ASIC_PROFILING_INFO_V3_6 ;
typedef TYPE_2__ ATOM_ASIC_PROFILING_INFO_V3_3 ;


 int ASIC_ProfilingInfo ;





 int DATA ;
 int GetIndexIntoMasterTable (int ,int ) ;
 int le32_to_cpu (int ) ;
 void* smu_atom_get_data_table (int ,int ,int *,int *,int *) ;

void atomctrl_get_voltage_range(struct pp_hwmgr *hwmgr, uint32_t *max_vddc,
       uint32_t *min_vddc)
{
 void *profile;

 profile = smu_atom_get_data_table(hwmgr->adev,
     GetIndexIntoMasterTable(DATA, ASIC_ProfilingInfo),
     ((void*)0), ((void*)0), ((void*)0));

 if (profile) {
  switch (hwmgr->chip_id) {
  case 128:
  case 132:
   *max_vddc = le32_to_cpu(((ATOM_ASIC_PROFILING_INFO_V3_3 *)profile)->ulMaxVddc) / 4;
   *min_vddc = le32_to_cpu(((ATOM_ASIC_PROFILING_INFO_V3_3 *)profile)->ulMinVddc) / 4;
   return;
  case 130:
  case 131:
  case 129:
   *max_vddc = le32_to_cpu(((ATOM_ASIC_PROFILING_INFO_V3_6 *)profile)->ulMaxVddc) / 100;
   *min_vddc = le32_to_cpu(((ATOM_ASIC_PROFILING_INFO_V3_6 *)profile)->ulMinVddc) / 100;
   return;
  default:
   break;
  }
 }
 *max_vddc = 0;
 *min_vddc = 0;
}
