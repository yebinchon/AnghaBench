
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct amdgpu_device {int dummy; } ;


 scalar_t__ amdgpu_sriov_vf (struct amdgpu_device*) ;
 int xgpu_vi_mailbox_get_irq (struct amdgpu_device*) ;

__attribute__((used)) static int vi_common_late_init(void *handle)
{
 struct amdgpu_device *adev = (struct amdgpu_device *)handle;

 if (amdgpu_sriov_vf(adev))
  xgpu_vi_mailbox_get_irq(adev);

 return 0;
}
