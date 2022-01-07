
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int num_types; int * funcs; } ;
struct TYPE_4__ {TYPE_1__ vm_fault; } ;
struct amdgpu_device {TYPE_2__ gmc; } ;


 int gmc_v6_0_irq_funcs ;

__attribute__((used)) static void gmc_v6_0_set_irq_funcs(struct amdgpu_device *adev)
{
 adev->gmc.vm_fault.num_types = 1;
 adev->gmc.vm_fault.funcs = &gmc_v6_0_irq_funcs;
}
