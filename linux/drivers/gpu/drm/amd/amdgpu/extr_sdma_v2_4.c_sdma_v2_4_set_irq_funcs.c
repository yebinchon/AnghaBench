
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int * funcs; } ;
struct TYPE_4__ {int * funcs; int num_types; } ;
struct TYPE_6__ {TYPE_2__ illegal_inst_irq; TYPE_1__ trap_irq; } ;
struct amdgpu_device {TYPE_3__ sdma; } ;


 int AMDGPU_SDMA_IRQ_LAST ;
 int sdma_v2_4_illegal_inst_irq_funcs ;
 int sdma_v2_4_trap_irq_funcs ;

__attribute__((used)) static void sdma_v2_4_set_irq_funcs(struct amdgpu_device *adev)
{
 adev->sdma.trap_irq.num_types = AMDGPU_SDMA_IRQ_LAST;
 adev->sdma.trap_irq.funcs = &sdma_v2_4_trap_irq_funcs;
 adev->sdma.illegal_inst_irq.funcs = &sdma_v2_4_illegal_inst_irq_funcs;
}
