
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int * funcs; void* num_types; } ;
struct TYPE_6__ {int * funcs; } ;
struct TYPE_5__ {int * funcs; void* num_types; } ;
struct TYPE_8__ {int num_instances; TYPE_3__ ecc_irq; TYPE_2__ illegal_inst_irq; TYPE_1__ trap_irq; } ;
struct amdgpu_device {TYPE_4__ sdma; } ;


 void* AMDGPU_SDMA_IRQ_INSTANCE1 ;
 void* AMDGPU_SDMA_IRQ_INSTANCE2 ;
 void* AMDGPU_SDMA_IRQ_LAST ;
 int sdma_v4_0_ecc_irq_funcs ;
 int sdma_v4_0_illegal_inst_irq_funcs ;
 int sdma_v4_0_trap_irq_funcs ;

__attribute__((used)) static void sdma_v4_0_set_irq_funcs(struct amdgpu_device *adev)
{
 switch (adev->sdma.num_instances) {
 case 1:
  adev->sdma.trap_irq.num_types = AMDGPU_SDMA_IRQ_INSTANCE1;
  adev->sdma.ecc_irq.num_types = AMDGPU_SDMA_IRQ_INSTANCE1;
  break;
 case 8:
  adev->sdma.trap_irq.num_types = AMDGPU_SDMA_IRQ_LAST;
  adev->sdma.ecc_irq.num_types = AMDGPU_SDMA_IRQ_LAST;
  break;
 case 2:
 default:
  adev->sdma.trap_irq.num_types = AMDGPU_SDMA_IRQ_INSTANCE2;
  adev->sdma.ecc_irq.num_types = AMDGPU_SDMA_IRQ_INSTANCE2;
  break;
 }
 adev->sdma.trap_irq.funcs = &sdma_v4_0_trap_irq_funcs;
 adev->sdma.illegal_inst_irq.funcs = &sdma_v4_0_illegal_inst_irq_funcs;
 adev->sdma.ecc_irq.funcs = &sdma_v4_0_ecc_irq_funcs;
}
