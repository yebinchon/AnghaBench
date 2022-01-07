
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct radeon_ps {int dummy; } ;
struct TYPE_3__ {struct radeon_ps* boot_ps; struct radeon_ps* requested_ps; struct radeon_ps* current_ps; } ;
struct TYPE_4__ {TYPE_1__ dpm; } ;
struct radeon_device {TYPE_2__ pm; } ;


 int pr_cont (char*) ;
 int printk (char*) ;

void r600_dpm_print_ps_status(struct radeon_device *rdev,
         struct radeon_ps *rps)
{
 printk("\tstatus:");
 if (rps == rdev->pm.dpm.current_ps)
  pr_cont(" c");
 if (rps == rdev->pm.dpm.requested_ps)
  pr_cont(" r");
 if (rps == rdev->pm.dpm.boot_ps)
  pr_cont(" b");
 pr_cont("\n");
}
