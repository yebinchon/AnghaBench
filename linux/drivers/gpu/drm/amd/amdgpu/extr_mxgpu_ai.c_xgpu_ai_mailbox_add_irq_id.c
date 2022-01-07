
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int rcv_irq; int ack_irq; } ;
struct amdgpu_device {TYPE_1__ virt; } ;


 int SOC15_IH_CLIENTID_BIF ;
 int amdgpu_irq_add_id (struct amdgpu_device*,int ,int,int *) ;
 int amdgpu_irq_put (struct amdgpu_device*,int *,int ) ;

int xgpu_ai_mailbox_add_irq_id(struct amdgpu_device *adev)
{
 int r;

 r = amdgpu_irq_add_id(adev, SOC15_IH_CLIENTID_BIF, 135, &adev->virt.rcv_irq);
 if (r)
  return r;

 r = amdgpu_irq_add_id(adev, SOC15_IH_CLIENTID_BIF, 138, &adev->virt.ack_irq);
 if (r) {
  amdgpu_irq_put(adev, &adev->virt.rcv_irq, 0);
  return r;
 }

 return 0;
}
