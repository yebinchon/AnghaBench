
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int num_types; int * funcs; } ;
struct TYPE_4__ {int num_types; int * funcs; } ;
struct TYPE_6__ {TYPE_2__ rcv_irq; TYPE_1__ ack_irq; } ;
struct amdgpu_device {TYPE_3__ virt; } ;


 int xgpu_ai_mailbox_ack_irq_funcs ;
 int xgpu_ai_mailbox_rcv_irq_funcs ;

void xgpu_ai_mailbox_set_irq_funcs(struct amdgpu_device *adev)
{
 adev->virt.ack_irq.num_types = 1;
 adev->virt.ack_irq.funcs = &xgpu_ai_mailbox_ack_irq_funcs;
 adev->virt.rcv_irq.num_types = 1;
 adev->virt.rcv_irq.funcs = &xgpu_ai_mailbox_rcv_irq_funcs;
}
