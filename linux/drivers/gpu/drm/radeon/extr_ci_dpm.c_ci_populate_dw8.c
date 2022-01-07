
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct radeon_device {int dummy; } ;
struct ci_pt_defaults {scalar_t__ tdc_waterfall_ctl; } ;
struct TYPE_2__ {scalar_t__ TdcWaterfallCtl; } ;
struct ci_power_info {TYPE_1__ smc_powertune_table; int sram_end; struct ci_pt_defaults* powertune_defaults; } ;


 int EINVAL ;
 int PmFuseTable ;
 int SMU7_Discrete_PmFuses ;
 scalar_t__ SMU7_FIRMWARE_HEADER_LOCATION ;
 int SMU7_Firmware_Header ;
 int TdcWaterfallCtl ;
 struct ci_power_info* ci_get_pi (struct radeon_device*) ;
 int ci_read_smc_sram_dword (struct radeon_device*,scalar_t__,int *,int ) ;
 scalar_t__ offsetof (int ,int ) ;

__attribute__((used)) static int ci_populate_dw8(struct radeon_device *rdev)
{
 struct ci_power_info *pi = ci_get_pi(rdev);
 const struct ci_pt_defaults *pt_defaults = pi->powertune_defaults;
 int ret;

 ret = ci_read_smc_sram_dword(rdev,
         SMU7_FIRMWARE_HEADER_LOCATION +
         offsetof(SMU7_Firmware_Header, PmFuseTable) +
         offsetof(SMU7_Discrete_PmFuses, TdcWaterfallCtl),
         (u32 *)&pi->smc_powertune_table.TdcWaterfallCtl,
         pi->sram_end);
 if (ret)
  return -EINVAL;
 else
  pi->smc_powertune_table.TdcWaterfallCtl = pt_defaults->tdc_waterfall_ctl;

 return 0;
}
