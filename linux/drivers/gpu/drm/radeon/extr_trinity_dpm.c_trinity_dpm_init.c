
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_8__ {int htc_tmp_lmt; } ;
struct trinity_power_info {int enable_bapm; int enable_nbps_policy; int enable_sclk_ds; int enable_gfx_power_gating; int enable_gfx_clock_gating; int enable_mg_clock_gating; int enable_gfx_dynamic_mgpg; int override_dynamic_mgpg; int enable_auto_thermal_throttling; int voltage_drop_in_dce; int uvd_dpm; int enable_dpm; TYPE_4__ sys_info; int thermal_auto_throttling; int * at; } ;
struct TYPE_5__ {struct trinity_power_info* priv; } ;
struct TYPE_6__ {TYPE_1__ dpm; } ;
struct radeon_device {TYPE_3__* pdev; TYPE_2__ pm; } ;
struct TYPE_7__ {int subsystem_vendor; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int SUMO_MAX_HARDWARE_POWERLEVELS ;
 int TRINITY_AT_DFLT ;
 struct trinity_power_info* kzalloc (int,int ) ;
 int r600_get_platform_caps (struct radeon_device*) ;
 int r600_parse_extended_power_table (struct radeon_device*) ;
 int radeon_bapm ;
 int trinity_construct_boot_state (struct radeon_device*) ;
 int trinity_parse_power_table (struct radeon_device*) ;
 int trinity_parse_sys_info_table (struct radeon_device*) ;

int trinity_dpm_init(struct radeon_device *rdev)
{
 struct trinity_power_info *pi;
 int ret, i;

 pi = kzalloc(sizeof(struct trinity_power_info), GFP_KERNEL);
 if (pi == ((void*)0))
  return -ENOMEM;
 rdev->pm.dpm.priv = pi;

 for (i = 0; i < SUMO_MAX_HARDWARE_POWERLEVELS; i++)
  pi->at[i] = TRINITY_AT_DFLT;

 if (radeon_bapm == -1) {






  if (rdev->pdev->subsystem_vendor == 0x1462)
   pi->enable_bapm = 1;
  else
   pi->enable_bapm = 0;
 } else if (radeon_bapm == 0) {
  pi->enable_bapm = 0;
 } else {
  pi->enable_bapm = 1;
 }
 pi->enable_nbps_policy = 1;
 pi->enable_sclk_ds = 1;
 pi->enable_gfx_power_gating = 1;
 pi->enable_gfx_clock_gating = 1;
 pi->enable_mg_clock_gating = 0;
 pi->enable_gfx_dynamic_mgpg = 0;
 pi->override_dynamic_mgpg = 0;
 pi->enable_auto_thermal_throttling = 1;
 pi->voltage_drop_in_dce = 0;
 pi->uvd_dpm = 1;

 ret = trinity_parse_sys_info_table(rdev);
 if (ret)
  return ret;

 trinity_construct_boot_state(rdev);

 ret = r600_get_platform_caps(rdev);
 if (ret)
  return ret;

 ret = r600_parse_extended_power_table(rdev);
 if (ret)
  return ret;

 ret = trinity_parse_power_table(rdev);
 if (ret)
  return ret;

 pi->thermal_auto_throttling = pi->sys_info.htc_tmp_lmt;
 pi->enable_dpm = 1;

 return 0;
}
