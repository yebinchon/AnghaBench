
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int rcv_irq; int ack_irq; } ;
struct amdgpu_device {TYPE_1__ virt; } ;


 int amdgpu_irq_put (struct amdgpu_device*,int *,int ) ;

void xgpu_vi_mailbox_put_irq(struct amdgpu_device *adev)
{
 amdgpu_irq_put(adev, &adev->virt.ack_irq, 0);
 amdgpu_irq_put(adev, &adev->virt.rcv_irq, 0);
}
