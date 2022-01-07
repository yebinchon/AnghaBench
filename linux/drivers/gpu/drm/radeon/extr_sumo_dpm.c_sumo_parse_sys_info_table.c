
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int ucHtcTmpLmt; int ucHtcHystLmt; int sAvail_SCLK; int sDISPCLK_Voltage; scalar_t__ EnableBoost; int ulBoostVid_2bit; int ulBoostEngineCLock; int SclkDpmTdpLimitBoost; int GnbTdpLimit; int SclkDpmTdpLimitPG; int SclkDpmThrottleMargin; int SclkDpmBoostMargin; int * ulCSR_M3_ARB_CNTL_FS3D; int * ulCSR_M3_ARB_CNTL_UVD; int * ulCSR_M3_ARB_CNTL_DEFAULT; int usBootUpNBVoltage; int ulBootUpUMAClock; int ulMinEngineClock; int ulBootUpEngineClock; } ;
union igp_info {TYPE_2__ info_6; } ;
typedef int u8 ;
typedef scalar_t__ u16 ;
struct TYPE_4__ {int htc_tmp_lmt; int htc_hyst_lmt; int enable_boost; int vid_mapping_table; int sclk_voltage_mapping_table; int disp_clk_voltage_mapping_table; int boost_vid_2bit; void* boost_sclk; void* sclk_dpm_tdp_limit_boost; void* gnb_tdp_limit; void* sclk_dpm_tdp_limit_pg; void* sclk_dpm_throttle_margin; void* sclk_dpm_boost_margin; void** csr_m3_arb_cntl_fs3d; void** csr_m3_arb_cntl_uvd; void** csr_m3_arb_cntl_default; void* bootup_nb_voltage_index; void* bootup_uma_clk; void* min_sclk; void* bootup_sclk; } ;
struct sumo_power_info {TYPE_1__ sys_info; } ;
struct radeon_mode_info {TYPE_3__* atom_context; } ;
struct radeon_device {struct radeon_mode_info mode_info; } ;
struct TYPE_6__ {scalar_t__ bios; } ;


 int DATA ;
 int DRM_ERROR (char*,...) ;
 int EINVAL ;
 int GetIndexIntoMasterTable (int ,int ) ;
 int IntegratedSystemInfo ;
 int NUMBER_OF_M3ARB_PARAM_SETS ;
 scalar_t__ atom_parse_data_header (TYPE_3__*,int,int *,int*,int*,scalar_t__*) ;
 void* le16_to_cpu (int ) ;
 void* le32_to_cpu (int ) ;
 int sumo_construct_display_voltage_mapping_table (struct radeon_device*,int *,int ) ;
 int sumo_construct_sclk_voltage_mapping_table (struct radeon_device*,int *,int ) ;
 int sumo_construct_vid_mapping_table (struct radeon_device*,int *,int ) ;
 struct sumo_power_info* sumo_get_pi (struct radeon_device*) ;

__attribute__((used)) static int sumo_parse_sys_info_table(struct radeon_device *rdev)
{
 struct sumo_power_info *pi = sumo_get_pi(rdev);
 struct radeon_mode_info *mode_info = &rdev->mode_info;
 int index = GetIndexIntoMasterTable(DATA, IntegratedSystemInfo);
 union igp_info *igp_info;
 u8 frev, crev;
 u16 data_offset;
 int i;

 if (atom_parse_data_header(mode_info->atom_context, index, ((void*)0),
       &frev, &crev, &data_offset)) {
  igp_info = (union igp_info *)(mode_info->atom_context->bios +
           data_offset);

  if (crev != 6) {
   DRM_ERROR("Unsupported IGP table: %d %d\n", frev, crev);
   return -EINVAL;
  }
  pi->sys_info.bootup_sclk = le32_to_cpu(igp_info->info_6.ulBootUpEngineClock);
  pi->sys_info.min_sclk = le32_to_cpu(igp_info->info_6.ulMinEngineClock);
  pi->sys_info.bootup_uma_clk = le32_to_cpu(igp_info->info_6.ulBootUpUMAClock);
  pi->sys_info.bootup_nb_voltage_index =
   le16_to_cpu(igp_info->info_6.usBootUpNBVoltage);
  if (igp_info->info_6.ucHtcTmpLmt == 0)
   pi->sys_info.htc_tmp_lmt = 203;
  else
   pi->sys_info.htc_tmp_lmt = igp_info->info_6.ucHtcTmpLmt;
  if (igp_info->info_6.ucHtcHystLmt == 0)
   pi->sys_info.htc_hyst_lmt = 5;
  else
   pi->sys_info.htc_hyst_lmt = igp_info->info_6.ucHtcHystLmt;
  if (pi->sys_info.htc_tmp_lmt <= pi->sys_info.htc_hyst_lmt) {
   DRM_ERROR("The htcTmpLmt should be larger than htcHystLmt.\n");
  }
  for (i = 0; i < NUMBER_OF_M3ARB_PARAM_SETS; i++) {
   pi->sys_info.csr_m3_arb_cntl_default[i] =
    le32_to_cpu(igp_info->info_6.ulCSR_M3_ARB_CNTL_DEFAULT[i]);
   pi->sys_info.csr_m3_arb_cntl_uvd[i] =
    le32_to_cpu(igp_info->info_6.ulCSR_M3_ARB_CNTL_UVD[i]);
   pi->sys_info.csr_m3_arb_cntl_fs3d[i] =
    le32_to_cpu(igp_info->info_6.ulCSR_M3_ARB_CNTL_FS3D[i]);
  }
  pi->sys_info.sclk_dpm_boost_margin =
   le32_to_cpu(igp_info->info_6.SclkDpmBoostMargin);
  pi->sys_info.sclk_dpm_throttle_margin =
   le32_to_cpu(igp_info->info_6.SclkDpmThrottleMargin);
  pi->sys_info.sclk_dpm_tdp_limit_pg =
   le16_to_cpu(igp_info->info_6.SclkDpmTdpLimitPG);
  pi->sys_info.gnb_tdp_limit = le16_to_cpu(igp_info->info_6.GnbTdpLimit);
  pi->sys_info.sclk_dpm_tdp_limit_boost =
   le16_to_cpu(igp_info->info_6.SclkDpmTdpLimitBoost);
  pi->sys_info.boost_sclk = le32_to_cpu(igp_info->info_6.ulBoostEngineCLock);
  pi->sys_info.boost_vid_2bit = igp_info->info_6.ulBoostVid_2bit;
  if (igp_info->info_6.EnableBoost)
   pi->sys_info.enable_boost = 1;
  else
   pi->sys_info.enable_boost = 0;
  sumo_construct_display_voltage_mapping_table(rdev,
            &pi->sys_info.disp_clk_voltage_mapping_table,
            igp_info->info_6.sDISPCLK_Voltage);
  sumo_construct_sclk_voltage_mapping_table(rdev,
         &pi->sys_info.sclk_voltage_mapping_table,
         igp_info->info_6.sAvail_SCLK);
  sumo_construct_vid_mapping_table(rdev, &pi->sys_info.vid_mapping_table,
       igp_info->info_6.sAvail_SCLK);

 }
 return 0;
}
