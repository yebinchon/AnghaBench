
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int flr_work; int rcv_irq; int ack_irq; } ;
struct amdgpu_device {TYPE_1__ virt; } ;


 int INIT_WORK (int *,int ) ;
 int amdgpu_irq_get (struct amdgpu_device*,int *,int ) ;
 int amdgpu_irq_put (struct amdgpu_device*,int *,int ) ;
 int xgpu_vi_mailbox_flr_work ;

int xgpu_vi_mailbox_get_irq(struct amdgpu_device *adev)
{
 int r;

 r = amdgpu_irq_get(adev, &adev->virt.rcv_irq, 0);
 if (r)
  return r;
 r = amdgpu_irq_get(adev, &adev->virt.ack_irq, 0);
 if (r) {
  amdgpu_irq_put(adev, &adev->virt.rcv_irq, 0);
  return r;
 }

 INIT_WORK(&adev->virt.flr_work, xgpu_vi_mailbox_flr_work);

 return 0;
}
