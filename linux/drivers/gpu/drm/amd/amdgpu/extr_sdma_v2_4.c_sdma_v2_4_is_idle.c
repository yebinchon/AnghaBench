
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct amdgpu_device {int dummy; } ;


 int RREG32 (int ) ;
 int SRBM_STATUS2__SDMA1_BUSY_MASK ;
 int SRBM_STATUS2__SDMA_BUSY_MASK ;
 int mmSRBM_STATUS2 ;

__attribute__((used)) static bool sdma_v2_4_is_idle(void *handle)
{
 struct amdgpu_device *adev = (struct amdgpu_device *)handle;
 u32 tmp = RREG32(mmSRBM_STATUS2);

 if (tmp & (SRBM_STATUS2__SDMA_BUSY_MASK |
     SRBM_STATUS2__SDMA1_BUSY_MASK))
     return 0;

 return 1;
}
