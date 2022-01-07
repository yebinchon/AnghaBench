
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int num_ps; int * ps; } ;
struct TYPE_4__ {TYPE_1__ dpm; } ;
struct radeon_device {TYPE_2__ pm; } ;


 int printk (char*,int) ;
 int radeon_dpm_print_power_state (struct radeon_device*,int *) ;

__attribute__((used)) static void radeon_dpm_print_power_states(struct radeon_device *rdev)
{
 int i;

 for (i = 0; i < rdev->pm.dpm.num_ps; i++) {
  printk("== power state %d ==\n", i);
  radeon_dpm_print_power_state(rdev, &rdev->pm.dpm.ps[i]);
 }
}
