
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct radeon_device {int dummy; } ;
struct ci_pt_defaults {int svi_load_line_vddc; int svi_load_line_en; } ;
struct TYPE_2__ {int SviLoadLineTrimVddC; scalar_t__ SviLoadLineOffsetVddC; int SviLoadLineVddC; int SviLoadLineEn; } ;
struct ci_power_info {TYPE_1__ smc_powertune_table; struct ci_pt_defaults* powertune_defaults; } ;


 struct ci_power_info* ci_get_pi (struct radeon_device*) ;

__attribute__((used)) static int ci_populate_svi_load_line(struct radeon_device *rdev)
{
 struct ci_power_info *pi = ci_get_pi(rdev);
 const struct ci_pt_defaults *pt_defaults = pi->powertune_defaults;

 pi->smc_powertune_table.SviLoadLineEn = pt_defaults->svi_load_line_en;
 pi->smc_powertune_table.SviLoadLineVddC = pt_defaults->svi_load_line_vddc;
 pi->smc_powertune_table.SviLoadLineTrimVddC = 3;
 pi->smc_powertune_table.SviLoadLineOffsetVddC = 0;

 return 0;
}
