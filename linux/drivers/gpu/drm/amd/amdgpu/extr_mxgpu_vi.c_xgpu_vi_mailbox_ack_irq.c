
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct amdgpu_iv_entry {int dummy; } ;
struct amdgpu_irq_src {int dummy; } ;
struct amdgpu_device {int dummy; } ;


 int DRM_DEBUG (char*) ;

__attribute__((used)) static int xgpu_vi_mailbox_ack_irq(struct amdgpu_device *adev,
       struct amdgpu_irq_src *source,
       struct amdgpu_iv_entry *entry)
{
 DRM_DEBUG("get ack intr and do nothing.\n");
 return 0;
}
