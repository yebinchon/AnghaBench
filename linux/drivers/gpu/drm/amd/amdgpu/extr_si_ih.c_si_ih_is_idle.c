
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct amdgpu_device {int dummy; } ;


 int RREG32 (int ) ;
 int SRBM_STATUS ;
 int SRBM_STATUS__IH_BUSY_MASK ;

__attribute__((used)) static bool si_ih_is_idle(void *handle)
{
 struct amdgpu_device *adev = (struct amdgpu_device *)handle;
 u32 tmp = RREG32(SRBM_STATUS);

 if (tmp & SRBM_STATUS__IH_BUSY_MASK)
  return 0;

 return 1;
}
