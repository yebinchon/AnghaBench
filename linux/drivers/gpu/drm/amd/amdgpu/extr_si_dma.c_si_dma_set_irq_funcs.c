
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * funcs; int num_types; } ;
struct TYPE_4__ {TYPE_1__ trap_irq; } ;
struct amdgpu_device {TYPE_2__ sdma; } ;


 int AMDGPU_SDMA_IRQ_LAST ;
 int si_dma_trap_irq_funcs ;

__attribute__((used)) static void si_dma_set_irq_funcs(struct amdgpu_device *adev)
{
 adev->sdma.trap_irq.num_types = AMDGPU_SDMA_IRQ_LAST;
 adev->sdma.trap_irq.funcs = &si_dma_trap_irq_funcs;
}
