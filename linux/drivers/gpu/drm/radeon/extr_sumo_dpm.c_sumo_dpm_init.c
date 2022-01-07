
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_6__ {int enable_boost; int htc_tmp_lmt; } ;
struct sumo_power_info {int driver_nbps_policy_disable; int disable_gfx_power_gating_in_uvd; int enable_alt_vddnb; int enable_sclk_ds; int enable_dynamic_m3_arbiter; int enable_dynamic_patch_ps; int enable_gfx_power_gating; int enable_gfx_clock_gating; int enable_mg_clock_gating; int enable_auto_thermal_throttling; int enable_dpm; TYPE_3__ sys_info; int enable_boost; int thermal_auto_throttling; int asi; int pasi; } ;
struct TYPE_4__ {struct sumo_power_info* priv; } ;
struct TYPE_5__ {TYPE_1__ dpm; } ;
struct radeon_device {scalar_t__ family; TYPE_2__ pm; } ;


 int ATI_REV_ID_MASK ;
 int ATI_REV_ID_SHIFT ;
 scalar_t__ CHIP_PALM ;
 int CYPRESS_HASI_DFLT ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int HW_REV ;
 int RREG32 (int ) ;
 int RV770_ASI_DFLT ;
 struct sumo_power_info* kzalloc (int,int ) ;
 int r600_get_platform_caps (struct radeon_device*) ;
 int sumo_construct_boot_and_acpi_state (struct radeon_device*) ;
 int sumo_parse_power_table (struct radeon_device*) ;
 int sumo_parse_sys_info_table (struct radeon_device*) ;

int sumo_dpm_init(struct radeon_device *rdev)
{
 struct sumo_power_info *pi;
 u32 hw_rev = (RREG32(HW_REV) & ATI_REV_ID_MASK) >> ATI_REV_ID_SHIFT;
 int ret;

 pi = kzalloc(sizeof(struct sumo_power_info), GFP_KERNEL);
 if (pi == ((void*)0))
  return -ENOMEM;
 rdev->pm.dpm.priv = pi;

 pi->driver_nbps_policy_disable = 0;
 if ((rdev->family == CHIP_PALM) && (hw_rev < 3))
  pi->disable_gfx_power_gating_in_uvd = 1;
 else
  pi->disable_gfx_power_gating_in_uvd = 0;
 pi->enable_alt_vddnb = 1;
 pi->enable_sclk_ds = 1;
 pi->enable_dynamic_m3_arbiter = 0;
 pi->enable_dynamic_patch_ps = 1;



 if (rdev->family == CHIP_PALM)
  pi->enable_gfx_power_gating = 0;
 else
  pi->enable_gfx_power_gating = 1;
 pi->enable_gfx_clock_gating = 1;
 pi->enable_mg_clock_gating = 1;
 pi->enable_auto_thermal_throttling = 1;

 ret = sumo_parse_sys_info_table(rdev);
 if (ret)
  return ret;

 sumo_construct_boot_and_acpi_state(rdev);

 ret = r600_get_platform_caps(rdev);
 if (ret)
  return ret;

 ret = sumo_parse_power_table(rdev);
 if (ret)
  return ret;

 pi->pasi = CYPRESS_HASI_DFLT;
 pi->asi = RV770_ASI_DFLT;
 pi->thermal_auto_throttling = pi->sys_info.htc_tmp_lmt;
 pi->enable_boost = pi->sys_info.enable_boost;
 pi->enable_dpm = 1;

 return 0;
}
