
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int num_types; int * funcs; } ;
struct TYPE_4__ {int num_types; int * funcs; } ;
struct TYPE_6__ {TYPE_2__ ecc_irq; TYPE_1__ vm_fault; } ;
struct amdgpu_device {TYPE_3__ gmc; } ;


 int gmc_v9_0_ecc_funcs ;
 int gmc_v9_0_irq_funcs ;

__attribute__((used)) static void gmc_v9_0_set_irq_funcs(struct amdgpu_device *adev)
{
 adev->gmc.vm_fault.num_types = 1;
 adev->gmc.vm_fault.funcs = &gmc_v9_0_irq_funcs;

 adev->gmc.ecc_irq.num_types = 1;
 adev->gmc.ecc_irq.funcs = &gmc_v9_0_ecc_funcs;
}
