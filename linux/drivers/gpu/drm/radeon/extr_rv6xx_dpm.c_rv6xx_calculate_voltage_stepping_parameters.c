
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ vddc; int flags; } ;
struct TYPE_6__ {scalar_t__ vddc; int flags; } ;
struct TYPE_5__ {scalar_t__ vddc; int flags; } ;
struct rv6xx_ps {TYPE_3__ low; TYPE_2__ medium; TYPE_1__ high; } ;
struct TYPE_8__ {scalar_t__* vddc; int* backbias; int* pcie_gen2; size_t high_vddc_index; size_t medium_vddc_index; size_t low_vddc_index; } ;
struct rv6xx_power_info {TYPE_4__ hw; } ;
struct radeon_device {int dummy; } ;


 int ATOM_PPLIB_R600_FLAGS_BACKBIASENABLE ;
 int ATOM_PPLIB_R600_FLAGS_PCIEGEN2 ;
 size_t R600_POWER_LEVEL_CTXSW ;
 size_t R600_POWER_LEVEL_HIGH ;
 size_t R600_POWER_LEVEL_LOW ;
 size_t R600_POWER_LEVEL_MEDIUM ;
 struct rv6xx_power_info* rv6xx_get_pi (struct radeon_device*) ;

__attribute__((used)) static void rv6xx_calculate_voltage_stepping_parameters(struct radeon_device *rdev,
       struct rv6xx_ps *state)
{
 struct rv6xx_power_info *pi = rv6xx_get_pi(rdev);

 pi->hw.vddc[R600_POWER_LEVEL_CTXSW] = state->high.vddc;
 pi->hw.vddc[R600_POWER_LEVEL_HIGH] = state->high.vddc;
 pi->hw.vddc[R600_POWER_LEVEL_MEDIUM] = state->medium.vddc;
 pi->hw.vddc[R600_POWER_LEVEL_LOW] = state->low.vddc;

 pi->hw.backbias[R600_POWER_LEVEL_CTXSW] =
  (state->high.flags & ATOM_PPLIB_R600_FLAGS_BACKBIASENABLE) ? 1 : 0;
 pi->hw.backbias[R600_POWER_LEVEL_HIGH] =
  (state->high.flags & ATOM_PPLIB_R600_FLAGS_BACKBIASENABLE) ? 1 : 0;
 pi->hw.backbias[R600_POWER_LEVEL_MEDIUM] =
  (state->medium.flags & ATOM_PPLIB_R600_FLAGS_BACKBIASENABLE) ? 1 : 0;
 pi->hw.backbias[R600_POWER_LEVEL_LOW] =
  (state->low.flags & ATOM_PPLIB_R600_FLAGS_BACKBIASENABLE) ? 1 : 0;

 pi->hw.pcie_gen2[R600_POWER_LEVEL_HIGH] =
  (state->high.flags & ATOM_PPLIB_R600_FLAGS_PCIEGEN2) ? 1 : 0;
 pi->hw.pcie_gen2[R600_POWER_LEVEL_MEDIUM] =
  (state->medium.flags & ATOM_PPLIB_R600_FLAGS_PCIEGEN2) ? 1 : 0;
 pi->hw.pcie_gen2[R600_POWER_LEVEL_LOW] =
  (state->low.flags & ATOM_PPLIB_R600_FLAGS_PCIEGEN2) ? 1 : 0;

 pi->hw.high_vddc_index = R600_POWER_LEVEL_HIGH;

 if ((state->high.vddc == state->medium.vddc) &&
     ((state->high.flags & ATOM_PPLIB_R600_FLAGS_BACKBIASENABLE) ==
      (state->medium.flags & ATOM_PPLIB_R600_FLAGS_BACKBIASENABLE)))
  pi->hw.medium_vddc_index =
   pi->hw.high_vddc_index;
 else
  pi->hw.medium_vddc_index = R600_POWER_LEVEL_MEDIUM;

 if ((state->medium.vddc == state->low.vddc) &&
     ((state->medium.flags & ATOM_PPLIB_R600_FLAGS_BACKBIASENABLE) ==
      (state->low.flags & ATOM_PPLIB_R600_FLAGS_BACKBIASENABLE)))
  pi->hw.low_vddc_index =
   pi->hw.medium_vddc_index;
 else
  pi->hw.medium_vddc_index = R600_POWER_LEVEL_LOW;
}
