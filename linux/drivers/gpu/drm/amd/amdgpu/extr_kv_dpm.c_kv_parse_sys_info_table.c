
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int ucHtcTmpLmt; int ucHtcHystLmt; int sAvail_SCLK; int ulGPUCapInfo; int * ulNbpStateNClkFreq; int * ulNbpStateMemclkFreq; int ulSystemConfig; int usBootUpNBVoltage; int ulBootUpUMAClock; int ulBootUpEngineClock; } ;
union igp_info {TYPE_2__ info_8; } ;
typedef int u8 ;
typedef scalar_t__ u16 ;
struct TYPE_7__ {int bootup_sclk; int bootup_uma_clk; int htc_tmp_lmt; int htc_hyst_lmt; int nb_dpm_enable; int* nbp_memory_clock; int* nbp_n_clock; int vid_mapping_table; int sclk_voltage_mapping_table; int bootup_nb_voltage_index; } ;
struct kv_power_info {int caps_enable_dfs_bypass; TYPE_1__ sys_info; } ;
struct amdgpu_mode_info {TYPE_6__* atom_context; } ;
struct TYPE_9__ {int max_clock_voltage_on_ac; } ;
struct TYPE_10__ {TYPE_3__ dyn_state; } ;
struct TYPE_11__ {TYPE_4__ dpm; } ;
struct amdgpu_device {TYPE_5__ pm; struct amdgpu_mode_info mode_info; } ;
struct TYPE_12__ {scalar_t__ bios; } ;


 int DATA ;
 int DRM_ERROR (char*,...) ;
 int EINVAL ;
 int GetIndexIntoMasterTable (int ,int ) ;
 int IntegratedSystemInfo ;
 int KV_NUM_NBPSTATES ;
 int SYS_INFO_GPUCAPS__ENABEL_DFS_BYPASS ;
 scalar_t__ amdgpu_atom_parse_data_header (TYPE_6__*,int,int *,int*,int*,scalar_t__*) ;
 int kv_construct_max_power_limits_table (struct amdgpu_device*,int *) ;
 struct kv_power_info* kv_get_pi (struct amdgpu_device*) ;
 int le16_to_cpu (int ) ;
 int le32_to_cpu (int ) ;
 int sumo_construct_sclk_voltage_mapping_table (struct amdgpu_device*,int *,int ) ;
 int sumo_construct_vid_mapping_table (struct amdgpu_device*,int *,int ) ;

__attribute__((used)) static int kv_parse_sys_info_table(struct amdgpu_device *adev)
{
 struct kv_power_info *pi = kv_get_pi(adev);
 struct amdgpu_mode_info *mode_info = &adev->mode_info;
 int index = GetIndexIntoMasterTable(DATA, IntegratedSystemInfo);
 union igp_info *igp_info;
 u8 frev, crev;
 u16 data_offset;
 int i;

 if (amdgpu_atom_parse_data_header(mode_info->atom_context, index, ((void*)0),
       &frev, &crev, &data_offset)) {
  igp_info = (union igp_info *)(mode_info->atom_context->bios +
           data_offset);

  if (crev != 8) {
   DRM_ERROR("Unsupported IGP table: %d %d\n", frev, crev);
   return -EINVAL;
  }
  pi->sys_info.bootup_sclk = le32_to_cpu(igp_info->info_8.ulBootUpEngineClock);
  pi->sys_info.bootup_uma_clk = le32_to_cpu(igp_info->info_8.ulBootUpUMAClock);
  pi->sys_info.bootup_nb_voltage_index =
   le16_to_cpu(igp_info->info_8.usBootUpNBVoltage);
  if (igp_info->info_8.ucHtcTmpLmt == 0)
   pi->sys_info.htc_tmp_lmt = 203;
  else
   pi->sys_info.htc_tmp_lmt = igp_info->info_8.ucHtcTmpLmt;
  if (igp_info->info_8.ucHtcHystLmt == 0)
   pi->sys_info.htc_hyst_lmt = 5;
  else
   pi->sys_info.htc_hyst_lmt = igp_info->info_8.ucHtcHystLmt;
  if (pi->sys_info.htc_tmp_lmt <= pi->sys_info.htc_hyst_lmt) {
   DRM_ERROR("The htcTmpLmt should be larger than htcHystLmt.\n");
  }

  if (le32_to_cpu(igp_info->info_8.ulSystemConfig) & (1 << 3))
   pi->sys_info.nb_dpm_enable = 1;
  else
   pi->sys_info.nb_dpm_enable = 0;

  for (i = 0; i < KV_NUM_NBPSTATES; i++) {
   pi->sys_info.nbp_memory_clock[i] =
    le32_to_cpu(igp_info->info_8.ulNbpStateMemclkFreq[i]);
   pi->sys_info.nbp_n_clock[i] =
    le32_to_cpu(igp_info->info_8.ulNbpStateNClkFreq[i]);
  }
  if (le32_to_cpu(igp_info->info_8.ulGPUCapInfo) &
      SYS_INFO_GPUCAPS__ENABEL_DFS_BYPASS)
   pi->caps_enable_dfs_bypass = 1;

  sumo_construct_sclk_voltage_mapping_table(adev,
         &pi->sys_info.sclk_voltage_mapping_table,
         igp_info->info_8.sAvail_SCLK);

  sumo_construct_vid_mapping_table(adev,
       &pi->sys_info.vid_mapping_table,
       igp_info->info_8.sAvail_SCLK);

  kv_construct_max_power_limits_table(adev,
          &adev->pm.dpm.dyn_state.max_clock_voltage_on_ac);
 }
 return 0;
}
