
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct amdgpu_device {int dummy; } ;


 scalar_t__ RREG32 (int ) ;
 int WREG32 (int ,scalar_t__) ;
 int mmRLC_CNTL ;

__attribute__((used)) static void gfx_v7_0_update_rlc(struct amdgpu_device *adev, u32 rlc)
{
 u32 tmp;

 tmp = RREG32(mmRLC_CNTL);
 if (tmp != rlc)
  WREG32(mmRLC_CNTL, rlc);
}
