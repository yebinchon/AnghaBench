
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct amdgpu_device {int dummy; } ;


 scalar_t__ amdgpu_sriov_vf (struct amdgpu_device*) ;
 int soc15_enable_doorbell_aperture (struct amdgpu_device*,int) ;
 int xgpu_ai_mailbox_put_irq (struct amdgpu_device*) ;

__attribute__((used)) static int soc15_common_hw_fini(void *handle)
{
 struct amdgpu_device *adev = (struct amdgpu_device *)handle;


 soc15_enable_doorbell_aperture(adev, 0);
 if (amdgpu_sriov_vf(adev))
  xgpu_ai_mailbox_put_irq(adev);

 return 0;
}
