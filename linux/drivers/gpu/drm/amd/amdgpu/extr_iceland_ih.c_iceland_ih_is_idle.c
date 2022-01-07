
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct amdgpu_device {int dummy; } ;


 int IH_BUSY ;
 scalar_t__ REG_GET_FIELD (int ,int ,int ) ;
 int RREG32 (int ) ;
 int SRBM_STATUS ;
 int mmSRBM_STATUS ;

__attribute__((used)) static bool iceland_ih_is_idle(void *handle)
{
 struct amdgpu_device *adev = (struct amdgpu_device *)handle;
 u32 tmp = RREG32(mmSRBM_STATUS);

 if (REG_GET_FIELD(tmp, SRBM_STATUS, IH_BUSY))
  return 0;

 return 1;
}
