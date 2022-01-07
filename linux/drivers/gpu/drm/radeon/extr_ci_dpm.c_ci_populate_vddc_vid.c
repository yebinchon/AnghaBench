
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
typedef size_t u32 ;
struct radeon_device {int dummy; } ;
struct TYPE_5__ {int count; TYPE_3__* entries; } ;
struct TYPE_4__ {int * VddCVid; } ;
struct ci_power_info {TYPE_2__ vddc_voltage_table; TYPE_1__ smc_powertune_table; } ;
struct TYPE_6__ {int value; } ;


 int EINVAL ;
 int ci_convert_to_vid (int ) ;
 struct ci_power_info* ci_get_pi (struct radeon_device*) ;

__attribute__((used)) static int ci_populate_vddc_vid(struct radeon_device *rdev)
{
 struct ci_power_info *pi = ci_get_pi(rdev);
 u8 *vid = pi->smc_powertune_table.VddCVid;
 u32 i;

 if (pi->vddc_voltage_table.count > 8)
  return -EINVAL;

 for (i = 0; i < pi->vddc_voltage_table.count; i++)
  vid[i] = ci_convert_to_vid(pi->vddc_voltage_table.entries[i].value);

 return 0;
}
