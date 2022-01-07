
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_9__ ;
typedef struct TYPE_19__ TYPE_8__ ;
typedef struct TYPE_18__ TYPE_7__ ;
typedef struct TYPE_17__ TYPE_6__ ;
typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;
typedef struct TYPE_11__ TYPE_10__ ;


struct rv7xx_power_info {int mclk_strobe_mode_threshold; int mclk_edc_enable_threshold; int power_gating; int gfx_clock_gating; int mg_clock_gating; int mgcgtssm; int dynamic_pcie_gen2; int thermal_protection; int display_gap; int dcodt; int ulps; int mclk_stutter_mode_threshold; int sram_end; int vrc; int pasi; int asi; void* mvdd_control; void* voltage_control; void* lmp; void* lhp; void* rmp; void* rlp; scalar_t__ ref_div; scalar_t__ max_vddc_in_table; scalar_t__ min_vddc_in_table; scalar_t__ acpi_vddc; } ;
struct TYPE_15__ {scalar_t__ sclk; scalar_t__ mclk; } ;
struct TYPE_14__ {int * values; scalar_t__ count; } ;
struct TYPE_13__ {int values; int count; } ;
struct TYPE_20__ {int count; TYPE_10__* entries; } ;
struct TYPE_17__ {int mclk_sclk_ratio; int vddc_vddci_delta; int min_vddc_for_pcie_gen2; int sclk_mclk_delta; TYPE_4__ max_clock_voltage_on_ac; TYPE_4__ max_clock_voltage_on_dc; TYPE_3__ valid_mclk_values; TYPE_2__ valid_sclk_values; TYPE_9__ vddc_dependency_on_dispclk; } ;
struct TYPE_18__ {scalar_t__ voltage_response_time; scalar_t__ backbias_response_time; TYPE_6__ dyn_state; struct evergreen_power_info* priv; } ;
struct TYPE_19__ {scalar_t__ int_thermal_type; TYPE_7__ dpm; } ;
struct radeon_device {int flags; scalar_t__ family; TYPE_8__ pm; } ;
struct radeon_clock_voltage_dependency_entry {int dummy; } ;
struct TYPE_16__ {int supported; } ;
struct evergreen_power_info {int mclk_edc_wr_enable_threshold; int smu_uvd_hs; int ls_clock_gating; int sclk_deep_sleep; int dynamic_ac_timing; int abm; int mcls; int light_sleep; int memory_transition; int pcie_performance_request; int dll_default_on; void* vddci_control; TYPE_1__* ats; scalar_t__ acpi_vddci; TYPE_5__ ulv; struct rv7xx_power_info rv7xx; } ;
struct atom_clock_dividers {scalar_t__ ref_div; } ;
struct TYPE_12__ {void* lmp; void* lhp; void* rmp; void* rlp; } ;
struct TYPE_11__ {int clk; int v; } ;


 int ARRAY_SIZE (int ) ;
 scalar_t__ ASIC_IS_LOMBOK (struct radeon_device*) ;
 void* BTC_LHP_UVD_DFLT ;
 void* BTC_LMP_UVD_DFLT ;
 void* BTC_RLP_UVD_DFLT ;
 void* BTC_RMP_UVD_DFLT ;
 scalar_t__ CHIP_BARTS ;
 scalar_t__ CHIP_TURKS ;
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
 void* RV770_LHP_DFLT ;
 void* RV770_LMP_DFLT ;
 void* RV770_RLP_DFLT ;
 void* RV770_RMP_DFLT ;
 int SET_VOLTAGE_TYPE_ASIC_MVDDC ;
 int SET_VOLTAGE_TYPE_ASIC_VDDC ;
 int SET_VOLTAGE_TYPE_ASIC_VDDCI ;
 int SMC_RAM_END ;
 scalar_t__ THERMAL_TYPE_NONE ;
 int btc_valid_sclk ;
 TYPE_10__* kcalloc (int,int,int ) ;
 struct evergreen_power_info* kzalloc (int,int ) ;
 int r600_free_extended_power_table (struct radeon_device*) ;
 int r600_get_platform_caps (struct radeon_device*) ;
 int r600_parse_extended_power_table (struct radeon_device*) ;
 int radeon_acpi_is_pcie_performance_request_supported (struct radeon_device*) ;
 int radeon_atom_get_clock_dividers (struct radeon_device*,int ,int ,int,struct atom_clock_dividers*) ;
 void* radeon_atom_is_voltage_gpio (struct radeon_device*,int ,int ) ;
 int rv770_get_engine_memory_ss (struct radeon_device*) ;
 int rv770_get_max_vddc (struct radeon_device*) ;
 int rv7xx_parse_power_table (struct radeon_device*) ;

int btc_dpm_init(struct radeon_device *rdev)
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
 ret = r600_parse_extended_power_table(rdev);
 if (ret)
  return ret;

 rdev->pm.dpm.dyn_state.vddc_dependency_on_dispclk.entries =
  kcalloc(4,
   sizeof(struct radeon_clock_voltage_dependency_entry),
   GFP_KERNEL);
 if (!rdev->pm.dpm.dyn_state.vddc_dependency_on_dispclk.entries) {
  r600_free_extended_power_table(rdev);
  return -ENOMEM;
 }
 rdev->pm.dpm.dyn_state.vddc_dependency_on_dispclk.count = 4;
 rdev->pm.dpm.dyn_state.vddc_dependency_on_dispclk.entries[0].clk = 0;
 rdev->pm.dpm.dyn_state.vddc_dependency_on_dispclk.entries[0].v = 0;
 rdev->pm.dpm.dyn_state.vddc_dependency_on_dispclk.entries[1].clk = 36000;
 rdev->pm.dpm.dyn_state.vddc_dependency_on_dispclk.entries[1].v = 800;
 rdev->pm.dpm.dyn_state.vddc_dependency_on_dispclk.entries[2].clk = 54000;
 rdev->pm.dpm.dyn_state.vddc_dependency_on_dispclk.entries[2].v = 800;
 rdev->pm.dpm.dyn_state.vddc_dependency_on_dispclk.entries[3].clk = 72000;
 rdev->pm.dpm.dyn_state.vddc_dependency_on_dispclk.entries[3].v = 800;

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

 eg_pi->ats[0].rlp = RV770_RLP_DFLT;
 eg_pi->ats[0].rmp = RV770_RMP_DFLT;
 eg_pi->ats[0].lhp = RV770_LHP_DFLT;
 eg_pi->ats[0].lmp = RV770_LMP_DFLT;

 eg_pi->ats[1].rlp = BTC_RLP_UVD_DFLT;
 eg_pi->ats[1].rmp = BTC_RMP_UVD_DFLT;
 eg_pi->ats[1].lhp = BTC_LHP_UVD_DFLT;
 eg_pi->ats[1].lmp = BTC_LMP_UVD_DFLT;

 eg_pi->smu_uvd_hs = 1;

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


 if (rdev->family == CHIP_BARTS)
  eg_pi->dll_default_on = 1;
 else
  eg_pi->dll_default_on = 0;

 eg_pi->sclk_deep_sleep = 0;
 if (ASIC_IS_LOMBOK(rdev))
  pi->mclk_stutter_mode_threshold = 30000;
 else
  pi->mclk_stutter_mode_threshold = 0;

 pi->sram_end = SMC_RAM_END;

 rdev->pm.dpm.dyn_state.mclk_sclk_ratio = 4;
 rdev->pm.dpm.dyn_state.vddc_vddci_delta = 200;
 rdev->pm.dpm.dyn_state.min_vddc_for_pcie_gen2 = 900;
 rdev->pm.dpm.dyn_state.valid_sclk_values.count = ARRAY_SIZE(btc_valid_sclk);
 rdev->pm.dpm.dyn_state.valid_sclk_values.values = btc_valid_sclk;
 rdev->pm.dpm.dyn_state.valid_mclk_values.count = 0;
 rdev->pm.dpm.dyn_state.valid_mclk_values.values = ((void*)0);

 if (rdev->family == CHIP_TURKS)
  rdev->pm.dpm.dyn_state.sclk_mclk_delta = 15000;
 else
  rdev->pm.dpm.dyn_state.sclk_mclk_delta = 10000;


 if ((rdev->pm.dpm.dyn_state.max_clock_voltage_on_dc.sclk == 0) ||
     (rdev->pm.dpm.dyn_state.max_clock_voltage_on_dc.mclk == 0))
  rdev->pm.dpm.dyn_state.max_clock_voltage_on_dc =
   rdev->pm.dpm.dyn_state.max_clock_voltage_on_ac;

 return 0;
}
