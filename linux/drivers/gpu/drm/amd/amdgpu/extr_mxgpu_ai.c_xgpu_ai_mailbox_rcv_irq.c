
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct amdgpu_iv_entry {int dummy; } ;
struct amdgpu_irq_src {int dummy; } ;
struct TYPE_2__ {int flr_work; } ;
struct amdgpu_device {TYPE_1__ virt; } ;
typedef enum idh_event { ____Placeholder_idh_event } idh_event ;







 int amdgpu_sriov_runtime (struct amdgpu_device*) ;
 int schedule_work (int *) ;
 int xgpu_ai_mailbox_peek_msg (struct amdgpu_device*) ;
 int xgpu_ai_mailbox_send_ack (struct amdgpu_device*) ;

__attribute__((used)) static int xgpu_ai_mailbox_rcv_irq(struct amdgpu_device *adev,
       struct amdgpu_irq_src *source,
       struct amdgpu_iv_entry *entry)
{
 enum idh_event event = xgpu_ai_mailbox_peek_msg(adev);

 switch (event) {
  case 131:
  if (amdgpu_sriov_runtime(adev))
   schedule_work(&adev->virt.flr_work);
  break;
  case 129:
   xgpu_ai_mailbox_send_ack(adev);
   break;




  case 132:
  case 130:
  case 128:
  default:
  break;
 }

 return 0;
}
