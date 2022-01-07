
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_7__ ;
typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int ucEngineClockHigh; int ucMemoryClockHigh; int usPCIELane; int ucPCIEGen; int usMemoryClockLow; int usEngineClockLow; } ;
union pplib_clock_info {TYPE_1__ ci; } ;
struct radeon_ps {int class; int class2; } ;
struct radeon_device {int dummy; } ;
struct ci_ps {int performance_level_count; struct ci_pl* performance_levels; } ;
struct TYPE_14__ {int min; int max; } ;
struct TYPE_13__ {int min; int max; } ;
struct TYPE_12__ {int min; int max; } ;
struct TYPE_11__ {int min; int max; } ;
struct TYPE_10__ {int mclk_bootup_value; int sclk_bootup_value; int pcie_lane_bootup_value; int pcie_gen_bootup_value; } ;
struct ci_pl {int sclk; int mclk; int pcie_lane; int pcie_gen; } ;
struct TYPE_9__ {int supported; int cg_ulv_parameter; struct ci_pl pl; } ;
struct ci_power_info {int use_pcie_powersaving_levels; int use_pcie_performance_levels; TYPE_7__ pcie_lane_performance; TYPE_6__ pcie_gen_performance; TYPE_5__ pcie_lane_powersaving; TYPE_4__ pcie_gen_powersaving; TYPE_3__ vbios_boot_state; TYPE_2__ ulv; int acpi_pcie_gen; int sys_pcie_mask; } ;


 int ATOM_PPLIB_CLASSIFICATION2_ULV ;
 int ATOM_PPLIB_CLASSIFICATION_ACPI ;
 int ATOM_PPLIB_CLASSIFICATION_BOOT ;

 int ATOM_PPLIB_CLASSIFICATION_UI_MASK ;

 int CISLANDS_CGULVPARAMETER_DFLT ;
 struct ci_power_info* ci_get_pi (struct radeon_device*) ;
 struct ci_ps* ci_get_ps (struct radeon_ps*) ;
 void* le16_to_cpu (int ) ;
 int r600_get_pcie_gen_support (struct radeon_device*,int ,int ,int ) ;
 int r600_get_pcie_lane_support (struct radeon_device*,int ,void*) ;

__attribute__((used)) static void ci_parse_pplib_clock_info(struct radeon_device *rdev,
          struct radeon_ps *rps, int index,
          union pplib_clock_info *clock_info)
{
 struct ci_power_info *pi = ci_get_pi(rdev);
 struct ci_ps *ps = ci_get_ps(rps);
 struct ci_pl *pl = &ps->performance_levels[index];

 ps->performance_level_count = index + 1;

 pl->sclk = le16_to_cpu(clock_info->ci.usEngineClockLow);
 pl->sclk |= clock_info->ci.ucEngineClockHigh << 16;
 pl->mclk = le16_to_cpu(clock_info->ci.usMemoryClockLow);
 pl->mclk |= clock_info->ci.ucMemoryClockHigh << 16;

 pl->pcie_gen = r600_get_pcie_gen_support(rdev,
       pi->sys_pcie_mask,
       pi->vbios_boot_state.pcie_gen_bootup_value,
       clock_info->ci.ucPCIEGen);
 pl->pcie_lane = r600_get_pcie_lane_support(rdev,
         pi->vbios_boot_state.pcie_lane_bootup_value,
         le16_to_cpu(clock_info->ci.usPCIELane));

 if (rps->class & ATOM_PPLIB_CLASSIFICATION_ACPI) {
  pi->acpi_pcie_gen = pl->pcie_gen;
 }

 if (rps->class2 & ATOM_PPLIB_CLASSIFICATION2_ULV) {
  pi->ulv.supported = 1;
  pi->ulv.pl = *pl;
  pi->ulv.cg_ulv_parameter = CISLANDS_CGULVPARAMETER_DFLT;
 }


 if (rps->class & ATOM_PPLIB_CLASSIFICATION_BOOT) {
  pl->mclk = pi->vbios_boot_state.mclk_bootup_value;
  pl->sclk = pi->vbios_boot_state.sclk_bootup_value;
  pl->pcie_gen = pi->vbios_boot_state.pcie_gen_bootup_value;
  pl->pcie_lane = pi->vbios_boot_state.pcie_lane_bootup_value;
 }

 switch (rps->class & ATOM_PPLIB_CLASSIFICATION_UI_MASK) {
 case 129:
  pi->use_pcie_powersaving_levels = 1;
  if (pi->pcie_gen_powersaving.max < pl->pcie_gen)
   pi->pcie_gen_powersaving.max = pl->pcie_gen;
  if (pi->pcie_gen_powersaving.min > pl->pcie_gen)
   pi->pcie_gen_powersaving.min = pl->pcie_gen;
  if (pi->pcie_lane_powersaving.max < pl->pcie_lane)
   pi->pcie_lane_powersaving.max = pl->pcie_lane;
  if (pi->pcie_lane_powersaving.min > pl->pcie_lane)
   pi->pcie_lane_powersaving.min = pl->pcie_lane;
  break;
 case 128:
  pi->use_pcie_performance_levels = 1;
  if (pi->pcie_gen_performance.max < pl->pcie_gen)
   pi->pcie_gen_performance.max = pl->pcie_gen;
  if (pi->pcie_gen_performance.min > pl->pcie_gen)
   pi->pcie_gen_performance.min = pl->pcie_gen;
  if (pi->pcie_lane_performance.max < pl->pcie_lane)
   pi->pcie_lane_performance.max = pl->pcie_lane;
  if (pi->pcie_lane_performance.min > pl->pcie_lane)
   pi->pcie_lane_performance.min = pl->pcie_lane;
  break;
 default:
  break;
 }
}
