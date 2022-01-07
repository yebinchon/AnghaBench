
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int srbm_soft_reset; } ;
struct amdgpu_device {TYPE_1__ irq; } ;


 int tonga_ih_hw_fini (struct amdgpu_device*) ;

__attribute__((used)) static int tonga_ih_pre_soft_reset(void *handle)
{
 struct amdgpu_device *adev = (struct amdgpu_device *)handle;

 if (!adev->irq.srbm_soft_reset)
  return 0;

 return tonga_ih_hw_fini(adev);
}
