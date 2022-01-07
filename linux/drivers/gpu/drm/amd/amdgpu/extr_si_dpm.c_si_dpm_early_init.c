
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct amdgpu_device* pp_handle; int * pp_funcs; } ;
struct amdgpu_device {TYPE_1__ powerplay; } ;


 int si_dpm_funcs ;
 int si_dpm_set_irq_funcs (struct amdgpu_device*) ;

__attribute__((used)) static int si_dpm_early_init(void *handle)
{

 struct amdgpu_device *adev = (struct amdgpu_device *)handle;

 adev->powerplay.pp_funcs = &si_dpm_funcs;
 adev->powerplay.pp_handle = adev;
 si_dpm_set_irq_funcs(adev);
 return 0;
}
