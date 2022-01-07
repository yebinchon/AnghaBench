
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct amdgpu_iv_entry {int dummy; } ;
struct amdgpu_irq_src {int dummy; } ;
struct TYPE_2__ {int flr_work; } ;
struct amdgpu_device {TYPE_1__ virt; } ;


 int IDH_FLR_NOTIFICATION ;
 int amdgpu_gpu_recovery ;
 int schedule_work (int *) ;
 int xgpu_vi_mailbox_rcv_msg (struct amdgpu_device*,int ) ;

__attribute__((used)) static int xgpu_vi_mailbox_rcv_irq(struct amdgpu_device *adev,
       struct amdgpu_irq_src *source,
       struct amdgpu_iv_entry *entry)
{
 int r;


 if (!amdgpu_gpu_recovery) {

  r = xgpu_vi_mailbox_rcv_msg(adev, IDH_FLR_NOTIFICATION);


  if (!r)
   schedule_work(&adev->virt.flr_work);
 }

 return 0;
}
