
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint64_t ;
typedef scalar_t__ uint32_t ;
struct TYPE_4__ {scalar_t__ didt_support; scalar_t__ vr0hot_enabled; scalar_t__ vr1hot_enabled; scalar_t__ led_dpm_enabled; scalar_t__ avfs_support; scalar_t__ fw_ctf_enabled; scalar_t__ fan_control_support; scalar_t__ thermal_support; scalar_t__ enable_tdc_limit_feature; scalar_t__ enable_pkg_pwr_tracking_feature; scalar_t__ sclk_deep_sleep_support; int dcefclk_dpm_key_disabled; int pcie_dpm_key_disabled; int socclk_dpm_key_disabled; int mclk_dpm_key_disabled; int sclk_dpm_key_disabled; int prefetcher_dpm_key_disabled; } ;
struct vega10_hwmgr {TYPE_3__* smu_features; TYPE_1__ registry_data; } ;
struct pp_hwmgr {int smu_version; int chip_id; struct amdgpu_device* adev; struct vega10_hwmgr* backend; } ;
struct amdgpu_device {int unique_id; TYPE_2__* pdev; } ;
struct TYPE_6__ {int smu_feature_id; int smu_feature_bitmap; int enabled; int supported; } ;
struct TYPE_5__ {scalar_t__ revision; scalar_t__ subsystem_vendor; } ;


 int FEATURE_ACDC_BIT ;
 int FEATURE_ACG_BIT ;
 int FEATURE_AVFS_BIT ;
 int FEATURE_DPM_DCEFCLK_BIT ;
 int FEATURE_DPM_GFXCLK_BIT ;
 int FEATURE_DPM_LINK_BIT ;
 int FEATURE_DPM_MP0CLK_BIT ;
 int FEATURE_DPM_PREFETCHER_BIT ;
 int FEATURE_DPM_SOCCLK_BIT ;
 int FEATURE_DPM_UCLK_BIT ;
 int FEATURE_DPM_UVD_BIT ;
 int FEATURE_DPM_VCE_BIT ;
 int FEATURE_DS_DCEFCLK_BIT ;
 int FEATURE_DS_GFXCLK_BIT ;
 int FEATURE_DS_LCLK_BIT ;
 int FEATURE_DS_SOCCLK_BIT ;
 int FEATURE_FAN_CONTROL_BIT ;
 int FEATURE_FW_CTF_BIT ;
 int FEATURE_GFX_EDC_BIT ;
 int FEATURE_GFX_PER_CU_CG_BIT ;
 int FEATURE_LED_DISPLAY_BIT ;
 int FEATURE_PCC_LIMIT_CONTROL_BIT ;
 int FEATURE_PPT_BIT ;
 int FEATURE_RM_BIT ;
 int FEATURE_TDC_BIT ;
 int FEATURE_THERMAL_BIT ;
 int FEATURE_ULV_BIT ;
 int FEATURE_VR0HOT_BIT ;
 int FEATURE_VR1HOT_BIT ;
 size_t GNLD_ACDC ;
 size_t GNLD_ACG ;
 size_t GNLD_AVFS ;
 size_t GNLD_DIDT ;
 size_t GNLD_DPM_DCEFCLK ;
 size_t GNLD_DPM_GFXCLK ;
 size_t GNLD_DPM_LINK ;
 size_t GNLD_DPM_MP0CLK ;
 size_t GNLD_DPM_PREFETCHER ;
 size_t GNLD_DPM_SOCCLK ;
 size_t GNLD_DPM_UCLK ;
 size_t GNLD_DPM_UVD ;
 size_t GNLD_DPM_VCE ;
 size_t GNLD_DS_DCEFCLK ;
 size_t GNLD_DS_GFXCLK ;
 size_t GNLD_DS_LCLK ;
 size_t GNLD_DS_SOCCLK ;
 size_t GNLD_FAN_CONTROL ;
 int GNLD_FEATURES_MAX ;
 size_t GNLD_FW_CTF ;
 size_t GNLD_GFX_PER_CU_CG ;
 size_t GNLD_LED_DISPLAY ;
 size_t GNLD_PCC_LIMIT ;
 size_t GNLD_PPT ;
 size_t GNLD_RM ;
 size_t GNLD_TDC ;
 size_t GNLD_THERMAL ;
 size_t GNLD_ULV ;
 size_t GNLD_VR0HOT ;
 size_t GNLD_VR1HOT ;
 int PHM_PlatformCaps_SclkDeepSleep ;
 int PHM_PlatformCaps_UVDDPM ;
 int PHM_PlatformCaps_VCEDPM ;
 int PPSMC_MSG_GetSmuVersion ;
 int PPSMC_MSG_ReadSerialNumBottom32 ;
 int PPSMC_MSG_ReadSerialNumTop32 ;
 scalar_t__ PP_CAP (int ) ;
 void* smum_get_argument (struct pp_hwmgr*) ;
 int smum_send_msg_to_smc (struct pp_hwmgr*,int ) ;
 int vega10_initialize_power_tune_defaults (struct pp_hwmgr*) ;

__attribute__((used)) static void vega10_init_dpm_defaults(struct pp_hwmgr *hwmgr)
{
 struct vega10_hwmgr *data = hwmgr->backend;
 int i;
 uint32_t sub_vendor_id, hw_revision;
 uint32_t top32, bottom32;
 struct amdgpu_device *adev = hwmgr->adev;

 vega10_initialize_power_tune_defaults(hwmgr);

 for (i = 0; i < GNLD_FEATURES_MAX; i++) {
  data->smu_features[i].smu_feature_id = 0xffff;
  data->smu_features[i].smu_feature_bitmap = 1 << i;
  data->smu_features[i].enabled = 0;
  data->smu_features[i].supported = 0;
 }

 data->smu_features[GNLD_DPM_PREFETCHER].smu_feature_id =
   FEATURE_DPM_PREFETCHER_BIT;
 data->smu_features[GNLD_DPM_GFXCLK].smu_feature_id =
   FEATURE_DPM_GFXCLK_BIT;
 data->smu_features[GNLD_DPM_UCLK].smu_feature_id =
   FEATURE_DPM_UCLK_BIT;
 data->smu_features[GNLD_DPM_SOCCLK].smu_feature_id =
   FEATURE_DPM_SOCCLK_BIT;
 data->smu_features[GNLD_DPM_UVD].smu_feature_id =
   FEATURE_DPM_UVD_BIT;
 data->smu_features[GNLD_DPM_VCE].smu_feature_id =
   FEATURE_DPM_VCE_BIT;
 data->smu_features[GNLD_DPM_MP0CLK].smu_feature_id =
   FEATURE_DPM_MP0CLK_BIT;
 data->smu_features[GNLD_DPM_LINK].smu_feature_id =
   FEATURE_DPM_LINK_BIT;
 data->smu_features[GNLD_DPM_DCEFCLK].smu_feature_id =
   FEATURE_DPM_DCEFCLK_BIT;
 data->smu_features[GNLD_ULV].smu_feature_id =
   FEATURE_ULV_BIT;
 data->smu_features[GNLD_AVFS].smu_feature_id =
   FEATURE_AVFS_BIT;
 data->smu_features[GNLD_DS_GFXCLK].smu_feature_id =
   FEATURE_DS_GFXCLK_BIT;
 data->smu_features[GNLD_DS_SOCCLK].smu_feature_id =
   FEATURE_DS_SOCCLK_BIT;
 data->smu_features[GNLD_DS_LCLK].smu_feature_id =
   FEATURE_DS_LCLK_BIT;
 data->smu_features[GNLD_PPT].smu_feature_id =
   FEATURE_PPT_BIT;
 data->smu_features[GNLD_TDC].smu_feature_id =
   FEATURE_TDC_BIT;
 data->smu_features[GNLD_THERMAL].smu_feature_id =
   FEATURE_THERMAL_BIT;
 data->smu_features[GNLD_GFX_PER_CU_CG].smu_feature_id =
   FEATURE_GFX_PER_CU_CG_BIT;
 data->smu_features[GNLD_RM].smu_feature_id =
   FEATURE_RM_BIT;
 data->smu_features[GNLD_DS_DCEFCLK].smu_feature_id =
   FEATURE_DS_DCEFCLK_BIT;
 data->smu_features[GNLD_ACDC].smu_feature_id =
   FEATURE_ACDC_BIT;
 data->smu_features[GNLD_VR0HOT].smu_feature_id =
   FEATURE_VR0HOT_BIT;
 data->smu_features[GNLD_VR1HOT].smu_feature_id =
   FEATURE_VR1HOT_BIT;
 data->smu_features[GNLD_FW_CTF].smu_feature_id =
   FEATURE_FW_CTF_BIT;
 data->smu_features[GNLD_LED_DISPLAY].smu_feature_id =
   FEATURE_LED_DISPLAY_BIT;
 data->smu_features[GNLD_FAN_CONTROL].smu_feature_id =
   FEATURE_FAN_CONTROL_BIT;
 data->smu_features[GNLD_ACG].smu_feature_id = FEATURE_ACG_BIT;
 data->smu_features[GNLD_DIDT].smu_feature_id = FEATURE_GFX_EDC_BIT;
 data->smu_features[GNLD_PCC_LIMIT].smu_feature_id = FEATURE_PCC_LIMIT_CONTROL_BIT;

 if (!data->registry_data.prefetcher_dpm_key_disabled)
  data->smu_features[GNLD_DPM_PREFETCHER].supported = 1;

 if (!data->registry_data.sclk_dpm_key_disabled)
  data->smu_features[GNLD_DPM_GFXCLK].supported = 1;

 if (!data->registry_data.mclk_dpm_key_disabled)
  data->smu_features[GNLD_DPM_UCLK].supported = 1;

 if (!data->registry_data.socclk_dpm_key_disabled)
  data->smu_features[GNLD_DPM_SOCCLK].supported = 1;

 if (PP_CAP(PHM_PlatformCaps_UVDDPM))
  data->smu_features[GNLD_DPM_UVD].supported = 1;

 if (PP_CAP(PHM_PlatformCaps_VCEDPM))
  data->smu_features[GNLD_DPM_VCE].supported = 1;

 if (!data->registry_data.pcie_dpm_key_disabled)
  data->smu_features[GNLD_DPM_LINK].supported = 1;

 if (!data->registry_data.dcefclk_dpm_key_disabled)
  data->smu_features[GNLD_DPM_DCEFCLK].supported = 1;

 if (PP_CAP(PHM_PlatformCaps_SclkDeepSleep) &&
     data->registry_data.sclk_deep_sleep_support) {
  data->smu_features[GNLD_DS_GFXCLK].supported = 1;
  data->smu_features[GNLD_DS_SOCCLK].supported = 1;
  data->smu_features[GNLD_DS_LCLK].supported = 1;
  data->smu_features[GNLD_DS_DCEFCLK].supported = 1;
 }

 if (data->registry_data.enable_pkg_pwr_tracking_feature)
  data->smu_features[GNLD_PPT].supported = 1;

 if (data->registry_data.enable_tdc_limit_feature)
  data->smu_features[GNLD_TDC].supported = 1;

 if (data->registry_data.thermal_support)
  data->smu_features[GNLD_THERMAL].supported = 1;

 if (data->registry_data.fan_control_support)
  data->smu_features[GNLD_FAN_CONTROL].supported = 1;

 if (data->registry_data.fw_ctf_enabled)
  data->smu_features[GNLD_FW_CTF].supported = 1;

 if (data->registry_data.avfs_support)
  data->smu_features[GNLD_AVFS].supported = 1;

 if (data->registry_data.led_dpm_enabled)
  data->smu_features[GNLD_LED_DISPLAY].supported = 1;

 if (data->registry_data.vr1hot_enabled)
  data->smu_features[GNLD_VR1HOT].supported = 1;

 if (data->registry_data.vr0hot_enabled)
  data->smu_features[GNLD_VR0HOT].supported = 1;

 smum_send_msg_to_smc(hwmgr, PPSMC_MSG_GetSmuVersion);
 hwmgr->smu_version = smum_get_argument(hwmgr);

 if ((hwmgr->smu_version & 0xff000000) == 0x5000000)
  data->smu_features[GNLD_ACG].supported = 1;
 if (data->registry_data.didt_support)
  data->smu_features[GNLD_DIDT].supported = 1;

 hw_revision = adev->pdev->revision;
 sub_vendor_id = adev->pdev->subsystem_vendor;

 if ((hwmgr->chip_id == 0x6862 ||
  hwmgr->chip_id == 0x6861 ||
  hwmgr->chip_id == 0x6868) &&
  (hw_revision == 0) &&
  (sub_vendor_id != 0x1002))
  data->smu_features[GNLD_PCC_LIMIT].supported = 1;


 smum_send_msg_to_smc(hwmgr, PPSMC_MSG_ReadSerialNumTop32);
 top32 = smum_get_argument(hwmgr);
 smum_send_msg_to_smc(hwmgr, PPSMC_MSG_ReadSerialNumBottom32);
 bottom32 = smum_get_argument(hwmgr);

 adev->unique_id = ((uint64_t)bottom32 << 32) | top32;
}
