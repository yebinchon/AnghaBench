
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct rv6xx_power_info {int fb_div_scale; int gfx_clock_gating; int sclk_ss; int dynamic_ss; int dynamic_pcie_gen2; int thermal_protection; int display_gap; void* mclk_ss; int voltage_control; void* mpll_ref_div; void* spll_ref_div; } ;
struct TYPE_3__ {scalar_t__ voltage_response_time; scalar_t__ backbias_response_time; struct rv6xx_power_info* priv; } ;
struct TYPE_4__ {scalar_t__ int_thermal_type; TYPE_1__ dpm; } ;
struct radeon_device {scalar_t__ family; TYPE_2__ pm; } ;
struct radeon_atom_ss {int dummy; } ;
struct atom_clock_dividers {void* ref_div; } ;


 int ASIC_INTERNAL_ENGINE_SS ;
 int ASIC_INTERNAL_MEMORY_SS ;
 scalar_t__ CHIP_RV670 ;
 int COMPUTE_ENGINE_PLL_PARAM ;
 int COMPUTE_MEMORY_PLL_PARAM ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ R600_BACKBIASRESPONSETIME_DFLT ;
 void* R600_REFERENCEDIVIDER_DFLT ;
 scalar_t__ R600_VOLTAGERESPONSETIME_DFLT ;
 int SET_VOLTAGE_TYPE_ASIC_VDDC ;
 scalar_t__ THERMAL_TYPE_NONE ;
 struct rv6xx_power_info* kzalloc (int,int ) ;
 int r600_get_platform_caps (struct radeon_device*) ;
 int radeon_atom_get_clock_dividers (struct radeon_device*,int ,int ,int,struct atom_clock_dividers*) ;
 int radeon_atom_is_voltage_gpio (struct radeon_device*,int ,int ) ;
 void* radeon_atombios_get_asic_ss_info (struct radeon_device*,struct radeon_atom_ss*,int ,int ) ;
 int rv6xx_parse_power_table (struct radeon_device*) ;

int rv6xx_dpm_init(struct radeon_device *rdev)
{
 struct radeon_atom_ss ss;
 struct atom_clock_dividers dividers;
 struct rv6xx_power_info *pi;
 int ret;

 pi = kzalloc(sizeof(struct rv6xx_power_info), GFP_KERNEL);
 if (pi == ((void*)0))
  return -ENOMEM;
 rdev->pm.dpm.priv = pi;

 ret = r600_get_platform_caps(rdev);
 if (ret)
  return ret;

 ret = rv6xx_parse_power_table(rdev);
 if (ret)
  return ret;

 if (rdev->pm.dpm.voltage_response_time == 0)
  rdev->pm.dpm.voltage_response_time = R600_VOLTAGERESPONSETIME_DFLT;
 if (rdev->pm.dpm.backbias_response_time == 0)
  rdev->pm.dpm.backbias_response_time = R600_BACKBIASRESPONSETIME_DFLT;

 ret = radeon_atom_get_clock_dividers(rdev, COMPUTE_ENGINE_PLL_PARAM,
          0, 0, &dividers);
 if (ret)
  pi->spll_ref_div = dividers.ref_div + 1;
 else
  pi->spll_ref_div = R600_REFERENCEDIVIDER_DFLT;

 ret = radeon_atom_get_clock_dividers(rdev, COMPUTE_MEMORY_PLL_PARAM,
          0, 0, &dividers);
 if (ret)
  pi->mpll_ref_div = dividers.ref_div + 1;
 else
  pi->mpll_ref_div = R600_REFERENCEDIVIDER_DFLT;

 if (rdev->family >= CHIP_RV670)
  pi->fb_div_scale = 1;
 else
  pi->fb_div_scale = 0;

 pi->voltage_control =
  radeon_atom_is_voltage_gpio(rdev, SET_VOLTAGE_TYPE_ASIC_VDDC, 0);

 pi->gfx_clock_gating = 1;

 pi->sclk_ss = radeon_atombios_get_asic_ss_info(rdev, &ss,
             ASIC_INTERNAL_ENGINE_SS, 0);
 pi->mclk_ss = radeon_atombios_get_asic_ss_info(rdev, &ss,
             ASIC_INTERNAL_MEMORY_SS, 0);


 pi->sclk_ss = 0;

 if (pi->sclk_ss || pi->mclk_ss)
  pi->dynamic_ss = 1;
 else
  pi->dynamic_ss = 0;

 pi->dynamic_pcie_gen2 = 1;

 if (pi->gfx_clock_gating &&
     (rdev->pm.int_thermal_type != THERMAL_TYPE_NONE))
  pi->thermal_protection = 1;
 else
  pi->thermal_protection = 0;

 pi->display_gap = 1;

 return 0;
}
