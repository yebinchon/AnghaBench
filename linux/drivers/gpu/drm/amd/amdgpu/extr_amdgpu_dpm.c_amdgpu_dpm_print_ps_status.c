
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct amdgpu_ps {int dummy; } ;
struct TYPE_3__ {struct amdgpu_ps* boot_ps; struct amdgpu_ps* requested_ps; struct amdgpu_ps* current_ps; } ;
struct TYPE_4__ {TYPE_1__ dpm; } ;
struct amdgpu_device {TYPE_2__ pm; } ;


 int pr_cont (char*) ;
 int printk (char*) ;

void amdgpu_dpm_print_ps_status(struct amdgpu_device *adev,
    struct amdgpu_ps *rps)
{
 printk("\tstatus:");
 if (rps == adev->pm.dpm.current_ps)
  pr_cont(" c");
 if (rps == adev->pm.dpm.requested_ps)
  pr_cont(" r");
 if (rps == adev->pm.dpm.boot_ps)
  pr_cont(" b");
 pr_cont("\n");
}
