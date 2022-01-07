
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct amdgpu_ras {int flags; } ;
struct amdgpu_device {int dummy; } ;


 int AMDGPU_RAS_FLAG_INIT_NEED_RESET ;
 int EINVAL ;
 struct amdgpu_ras* amdgpu_ras_get_context (struct amdgpu_device*) ;

int amdgpu_ras_request_reset_on_boot(struct amdgpu_device *adev,
  unsigned int block)
{
 struct amdgpu_ras *ras = amdgpu_ras_get_context(adev);

 if (!ras)
  return -EINVAL;

 ras->flags |= AMDGPU_RAS_FLAG_INIT_NEED_RESET;
 return 0;
}
