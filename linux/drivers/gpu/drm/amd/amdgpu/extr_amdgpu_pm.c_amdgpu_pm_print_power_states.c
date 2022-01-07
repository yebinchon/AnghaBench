
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int num_ps; int * ps; } ;
struct TYPE_8__ {TYPE_3__ dpm; } ;
struct TYPE_6__ {TYPE_1__* pp_funcs; } ;
struct amdgpu_device {TYPE_4__ pm; TYPE_2__ powerplay; } ;
struct TYPE_5__ {int * print_power_state; } ;


 int amdgpu_dpm_print_power_state (struct amdgpu_device*,int *) ;

void amdgpu_pm_print_power_states(struct amdgpu_device *adev)
{
 int i;

 if (adev->powerplay.pp_funcs->print_power_state == ((void*)0))
  return;

 for (i = 0; i < adev->pm.dpm.num_ps; i++)
  amdgpu_dpm_print_power_state(adev, &adev->pm.dpm.ps[i]);

}
