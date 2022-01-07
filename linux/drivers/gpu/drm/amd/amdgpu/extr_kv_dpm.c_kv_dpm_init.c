
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct kv_power_info {int enable_nb_dpm; int caps_power_containment; int caps_cac; int enable_didt; int caps_sq_ramping; int caps_db_ramping; int caps_td_ramping; int caps_tcp_ramping; int caps_sclk_ds; int enable_auto_thermal_throttling; int disable_nb_ps3_in_battery; int bapm_enable; int caps_sclk_throttle_low_notification; int caps_fps; int caps_uvd_pg; int caps_uvd_dpm; int caps_vce_pg; int caps_samu_pg; int caps_acp_pg; int caps_stable_p_state; int enable_dpm; scalar_t__ voltage_drop_t; int sram_end; int * at; } ;
struct TYPE_3__ {struct kv_power_info* priv; } ;
struct TYPE_4__ {int pp_feature; TYPE_1__ dpm; } ;
struct amdgpu_device {int pg_flags; TYPE_2__ pm; } ;


 int AMD_PG_SUPPORT_ACP ;
 int AMD_PG_SUPPORT_SAMU ;
 int AMD_PG_SUPPORT_UVD ;
 int AMD_PG_SUPPORT_VCE ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int PP_SCLK_DEEP_SLEEP_MASK ;
 int SMC_RAM_END ;
 int SUMO_MAX_HARDWARE_POWERLEVELS ;
 int TRINITY_AT_DFLT ;
 scalar_t__ amdgpu_bapm ;
 int amdgpu_get_platform_caps (struct amdgpu_device*) ;
 int amdgpu_parse_extended_power_table (struct amdgpu_device*) ;
 int kv_construct_boot_state (struct amdgpu_device*) ;
 int kv_parse_power_table (struct amdgpu_device*) ;
 int kv_parse_sys_info_table (struct amdgpu_device*) ;
 int kv_patch_voltage_values (struct amdgpu_device*) ;
 struct kv_power_info* kzalloc (int,int ) ;

__attribute__((used)) static int kv_dpm_init(struct amdgpu_device *adev)
{
 struct kv_power_info *pi;
 int ret, i;

 pi = kzalloc(sizeof(struct kv_power_info), GFP_KERNEL);
 if (pi == ((void*)0))
  return -ENOMEM;
 adev->pm.dpm.priv = pi;

 ret = amdgpu_get_platform_caps(adev);
 if (ret)
  return ret;

 ret = amdgpu_parse_extended_power_table(adev);
 if (ret)
  return ret;

 for (i = 0; i < SUMO_MAX_HARDWARE_POWERLEVELS; i++)
  pi->at[i] = TRINITY_AT_DFLT;

 pi->sram_end = SMC_RAM_END;

 pi->enable_nb_dpm = 1;

 pi->caps_power_containment = 1;
 pi->caps_cac = 1;
 pi->enable_didt = 0;
 if (pi->enable_didt) {
  pi->caps_sq_ramping = 1;
  pi->caps_db_ramping = 1;
  pi->caps_td_ramping = 1;
  pi->caps_tcp_ramping = 1;
 }

 if (adev->pm.pp_feature & PP_SCLK_DEEP_SLEEP_MASK)
  pi->caps_sclk_ds = 1;
 else
  pi->caps_sclk_ds = 0;

 pi->enable_auto_thermal_throttling = 1;
 pi->disable_nb_ps3_in_battery = 0;
 if (amdgpu_bapm == 0)
  pi->bapm_enable = 0;
 else
  pi->bapm_enable = 1;
 pi->voltage_drop_t = 0;
 pi->caps_sclk_throttle_low_notification = 0;
 pi->caps_fps = 0;
 pi->caps_uvd_pg = (adev->pg_flags & AMD_PG_SUPPORT_UVD) ? 1 : 0;
 pi->caps_uvd_dpm = 1;
 pi->caps_vce_pg = (adev->pg_flags & AMD_PG_SUPPORT_VCE) ? 1 : 0;
 pi->caps_samu_pg = (adev->pg_flags & AMD_PG_SUPPORT_SAMU) ? 1 : 0;
 pi->caps_acp_pg = (adev->pg_flags & AMD_PG_SUPPORT_ACP) ? 1 : 0;
 pi->caps_stable_p_state = 0;

 ret = kv_parse_sys_info_table(adev);
 if (ret)
  return ret;

 kv_patch_voltage_values(adev);
 kv_construct_boot_state(adev);

 ret = kv_parse_power_table(adev);
 if (ret)
  return ret;

 pi->enable_dpm = 1;

 return 0;
}
