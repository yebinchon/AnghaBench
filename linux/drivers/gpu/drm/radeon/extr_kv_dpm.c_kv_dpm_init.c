
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct kv_power_info* priv; } ;
struct TYPE_5__ {TYPE_1__ dpm; } ;
struct radeon_device {scalar_t__ family; TYPE_3__* pdev; TYPE_2__ pm; } ;
struct kv_power_info {int enable_nb_dpm; int caps_power_containment; int caps_cac; int enable_didt; int caps_sq_ramping; int caps_db_ramping; int caps_td_ramping; int caps_tcp_ramping; int caps_sclk_ds; int enable_auto_thermal_throttling; int disable_nb_ps3_in_battery; int bapm_enable; int caps_sclk_throttle_low_notification; int caps_fps; int caps_uvd_pg; int caps_uvd_dpm; int caps_vce_pg; int caps_samu_pg; int caps_acp_pg; int caps_stable_p_state; int enable_dpm; scalar_t__ voltage_drop_t; int sram_end; int * at; } ;
struct TYPE_6__ {int subsystem_vendor; } ;


 scalar_t__ CHIP_KABINI ;
 scalar_t__ CHIP_MULLINS ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int SMC_RAM_END ;
 int SUMO_MAX_HARDWARE_POWERLEVELS ;
 int TRINITY_AT_DFLT ;
 int kv_construct_boot_state (struct radeon_device*) ;
 int kv_parse_power_table (struct radeon_device*) ;
 int kv_parse_sys_info_table (struct radeon_device*) ;
 int kv_patch_voltage_values (struct radeon_device*) ;
 struct kv_power_info* kzalloc (int,int ) ;
 int r600_get_platform_caps (struct radeon_device*) ;
 int r600_parse_extended_power_table (struct radeon_device*) ;
 int radeon_bapm ;

int kv_dpm_init(struct radeon_device *rdev)
{
 struct kv_power_info *pi;
 int ret, i;

 pi = kzalloc(sizeof(struct kv_power_info), GFP_KERNEL);
 if (pi == ((void*)0))
  return -ENOMEM;
 rdev->pm.dpm.priv = pi;

 ret = r600_get_platform_caps(rdev);
 if (ret)
  return ret;

 ret = r600_parse_extended_power_table(rdev);
 if (ret)
  return ret;

 for (i = 0; i < SUMO_MAX_HARDWARE_POWERLEVELS; i++)
  pi->at[i] = TRINITY_AT_DFLT;

 pi->sram_end = SMC_RAM_END;


 if (rdev->pdev->subsystem_vendor == 0x1849)
  pi->enable_nb_dpm = 0;
 else
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

 pi->caps_sclk_ds = 1;
 pi->enable_auto_thermal_throttling = 1;
 pi->disable_nb_ps3_in_battery = 0;
 if (radeon_bapm == -1) {

  if (rdev->family == CHIP_KABINI || rdev->family == CHIP_MULLINS)
   pi->bapm_enable = 1;
  else
   pi->bapm_enable = 0;
 } else if (radeon_bapm == 0) {
  pi->bapm_enable = 0;
 } else {
  pi->bapm_enable = 1;
 }
 pi->voltage_drop_t = 0;
 pi->caps_sclk_throttle_low_notification = 0;
 pi->caps_fps = 0;
 pi->caps_uvd_pg = 1;
 pi->caps_uvd_dpm = 1;
 pi->caps_vce_pg = 0;
 pi->caps_samu_pg = 0;
 pi->caps_acp_pg = 0;
 pi->caps_stable_p_state = 0;

 ret = kv_parse_sys_info_table(rdev);
 if (ret)
  return ret;

 kv_patch_voltage_values(rdev);
 kv_construct_boot_state(rdev);

 ret = kv_parse_power_table(rdev);
 if (ret)
  return ret;

 pi->enable_dpm = 1;

 return 0;
}
