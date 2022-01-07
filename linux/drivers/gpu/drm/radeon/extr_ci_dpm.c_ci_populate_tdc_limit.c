
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_8__ {TYPE_2__* cac_tdp_table; } ;
struct TYPE_9__ {TYPE_3__ dyn_state; } ;
struct TYPE_10__ {TYPE_4__ dpm; } ;
struct radeon_device {TYPE_5__ pm; } ;
struct ci_pt_defaults {int tdc_mawt; int tdc_vddc_throttle_release_limit_perc; } ;
struct TYPE_6__ {int TDC_MAWt; int TDC_VDDC_ThrottleReleaseLimitPerc; int TDC_VDDC_PkgLimit; } ;
struct ci_power_info {TYPE_1__ smc_powertune_table; struct ci_pt_defaults* powertune_defaults; } ;
struct TYPE_7__ {int tdc; } ;


 struct ci_power_info* ci_get_pi (struct radeon_device*) ;
 int cpu_to_be16 (int) ;

__attribute__((used)) static int ci_populate_tdc_limit(struct radeon_device *rdev)
{
 struct ci_power_info *pi = ci_get_pi(rdev);
 const struct ci_pt_defaults *pt_defaults = pi->powertune_defaults;
 u16 tdc_limit;

 tdc_limit = rdev->pm.dpm.dyn_state.cac_tdp_table->tdc * 256;
 pi->smc_powertune_table.TDC_VDDC_PkgLimit = cpu_to_be16(tdc_limit);
 pi->smc_powertune_table.TDC_VDDC_ThrottleReleaseLimitPerc =
  pt_defaults->tdc_vddc_throttle_release_limit_perc;
 pi->smc_powertune_table.TDC_MAWt = pt_defaults->tdc_mawt;

 return 0;
}
