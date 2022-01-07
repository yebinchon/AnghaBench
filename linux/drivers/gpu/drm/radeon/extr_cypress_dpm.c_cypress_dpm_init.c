
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct rv7xx_power_info {int mclk_strobe_mode_threshold; int mclk_edc_enable_threshold; int power_gating; int gfx_clock_gating; int mg_clock_gating; int mgcgtssm; int dynamic_pcie_gen2; int thermal_protection; int display_gap; int dcodt; int ulps; int sram_end; scalar_t__ mclk_stutter_mode_threshold; int vrc; int pasi; int asi; void* mvdd_control; void* voltage_control; int lmp; int lhp; int rmp; int rlp; scalar_t__ ref_div; scalar_t__ max_vddc_in_table; scalar_t__ min_vddc_in_table; scalar_t__ acpi_vddc; } ;
struct TYPE_5__ {scalar_t__ voltage_response_time; scalar_t__ backbias_response_time; struct evergreen_power_info* priv; } ;
struct TYPE_6__ {scalar_t__ int_thermal_type; TYPE_2__ dpm; } ;
struct radeon_device {scalar_t__ family; int flags; TYPE_3__ pm; } ;
struct TYPE_4__ {int supported; } ;
struct evergreen_power_info {int mclk_edc_wr_enable_threshold; int ls_clock_gating; int sclk_deep_sleep; int dynamic_ac_timing; int abm; int mcls; int light_sleep; int memory_transition; int pcie_performance_request; int dll_default_on; void* vddci_control; scalar_t__ acpi_vddci; TYPE_1__ ulv; struct rv7xx_power_info rv7xx; } ;
struct atom_clock_dividers {scalar_t__ ref_div; } ;


 scalar_t__ CHIP_CYPRESS ;
 scalar_t__ CHIP_HEMLOCK ;
 scalar_t__ CHIP_JUNIPER ;
 int COMPUTE_ENGINE_PLL_PARAM ;
 int CYPRESS_HASI_DFLT ;
 int CYPRESS_VRC_DFLT ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ R600_BACKBIASRESPONSETIME_DFLT ;
 scalar_t__ R600_REFERENCEDIVIDER_DFLT ;
 scalar_t__ R600_VOLTAGERESPONSETIME_DFLT ;
 int RADEON_IS_MOBILITY ;
 int RV770_ASI_DFLT ;
 int RV770_LHP_DFLT ;
 int RV770_LMP_DFLT ;
 int RV770_RLP_DFLT ;
 int RV770_RMP_DFLT ;
 int SET_VOLTAGE_TYPE_ASIC_MVDDC ;
 int SET_VOLTAGE_TYPE_ASIC_VDDC ;
 int SET_VOLTAGE_TYPE_ASIC_VDDCI ;
 int SMC_RAM_END ;
 scalar_t__ THERMAL_TYPE_NONE ;
 struct evergreen_power_info* kzalloc (int,int ) ;
 int r600_get_platform_caps (struct radeon_device*) ;
 int radeon_acpi_is_pcie_performance_request_supported (struct radeon_device*) ;
 int radeon_atom_get_clock_dividers (struct radeon_device*,int ,int ,int,struct atom_clock_dividers*) ;
 void* radeon_atom_is_voltage_gpio (struct radeon_device*,int ,int ) ;
 int rv770_get_engine_memory_ss (struct radeon_device*) ;
 int rv770_get_max_vddc (struct radeon_device*) ;
 int rv7xx_parse_power_table (struct radeon_device*) ;

int cypress_dpm_init(struct radeon_device *rdev)
{
 struct rv7xx_power_info *pi;
 struct evergreen_power_info *eg_pi;
 struct atom_clock_dividers dividers;
 int ret;

 eg_pi = kzalloc(sizeof(struct evergreen_power_info), GFP_KERNEL);
 if (eg_pi == ((void*)0))
  return -ENOMEM;
 rdev->pm.dpm.priv = eg_pi;
 pi = &eg_pi->rv7xx;

 rv770_get_max_vddc(rdev);

 eg_pi->ulv.supported = 0;
 pi->acpi_vddc = 0;
 eg_pi->acpi_vddci = 0;
 pi->min_vddc_in_table = 0;
 pi->max_vddc_in_table = 0;

 ret = r600_get_platform_caps(rdev);
 if (ret)
  return ret;

 ret = rv7xx_parse_power_table(rdev);
 if (ret)
  return ret;

 if (rdev->pm.dpm.voltage_response_time == 0)
  rdev->pm.dpm.voltage_response_time = R600_VOLTAGERESPONSETIME_DFLT;
 if (rdev->pm.dpm.backbias_response_time == 0)
  rdev->pm.dpm.backbias_response_time = R600_BACKBIASRESPONSETIME_DFLT;

 ret = radeon_atom_get_clock_dividers(rdev, COMPUTE_ENGINE_PLL_PARAM,
          0, 0, &dividers);
 if (ret)
  pi->ref_div = dividers.ref_div + 1;
 else
  pi->ref_div = R600_REFERENCEDIVIDER_DFLT;

 pi->mclk_strobe_mode_threshold = 40000;
 pi->mclk_edc_enable_threshold = 40000;
 eg_pi->mclk_edc_wr_enable_threshold = 40000;

 pi->rlp = RV770_RLP_DFLT;
 pi->rmp = RV770_RMP_DFLT;
 pi->lhp = RV770_LHP_DFLT;
 pi->lmp = RV770_LMP_DFLT;

 pi->voltage_control =
  radeon_atom_is_voltage_gpio(rdev, SET_VOLTAGE_TYPE_ASIC_VDDC, 0);

 pi->mvdd_control =
  radeon_atom_is_voltage_gpio(rdev, SET_VOLTAGE_TYPE_ASIC_MVDDC, 0);

 eg_pi->vddci_control =
  radeon_atom_is_voltage_gpio(rdev, SET_VOLTAGE_TYPE_ASIC_VDDCI, 0);

 rv770_get_engine_memory_ss(rdev);

 pi->asi = RV770_ASI_DFLT;
 pi->pasi = CYPRESS_HASI_DFLT;
 pi->vrc = CYPRESS_VRC_DFLT;

 pi->power_gating = 0;

 if ((rdev->family == CHIP_CYPRESS) ||
     (rdev->family == CHIP_HEMLOCK))
  pi->gfx_clock_gating = 0;
 else
  pi->gfx_clock_gating = 1;

 pi->mg_clock_gating = 1;
 pi->mgcgtssm = 1;
 eg_pi->ls_clock_gating = 0;
 eg_pi->sclk_deep_sleep = 0;

 pi->dynamic_pcie_gen2 = 1;

 if (rdev->pm.int_thermal_type != THERMAL_TYPE_NONE)
  pi->thermal_protection = 1;
 else
  pi->thermal_protection = 0;

 pi->display_gap = 1;

 if (rdev->flags & RADEON_IS_MOBILITY)
  pi->dcodt = 1;
 else
  pi->dcodt = 0;

 pi->ulps = 1;

 eg_pi->dynamic_ac_timing = 1;
 eg_pi->abm = 1;
 eg_pi->mcls = 1;
 eg_pi->light_sleep = 1;
 eg_pi->memory_transition = 1;




 eg_pi->pcie_performance_request = 0;


 if ((rdev->family == CHIP_CYPRESS) ||
     (rdev->family == CHIP_HEMLOCK) ||
     (rdev->family == CHIP_JUNIPER))
  eg_pi->dll_default_on = 1;
 else
  eg_pi->dll_default_on = 0;

 eg_pi->sclk_deep_sleep = 0;
 pi->mclk_stutter_mode_threshold = 0;

 pi->sram_end = SMC_RAM_END;

 return 0;
}
