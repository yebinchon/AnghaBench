
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int rcv_irq; int ack_irq; } ;
struct amdgpu_device {TYPE_1__ virt; } ;


 int AMDGPU_IRQ_CLIENTID_LEGACY ;
 int amdgpu_irq_add_id (struct amdgpu_device*,int ,int,int *) ;
 int amdgpu_irq_put (struct amdgpu_device*,int *,int ) ;

int xgpu_vi_mailbox_add_irq_id(struct amdgpu_device *adev)
{
 int r;

 r = amdgpu_irq_add_id(adev, AMDGPU_IRQ_CLIENTID_LEGACY, 135, &adev->virt.rcv_irq);
 if (r)
  return r;

 r = amdgpu_irq_add_id(adev, AMDGPU_IRQ_CLIENTID_LEGACY, 138, &adev->virt.ack_irq);
 if (r) {
  amdgpu_irq_put(adev, &adev->virt.rcv_irq, 0);
  return r;
 }

 return 0;
}
