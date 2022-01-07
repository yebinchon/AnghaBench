
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct amdgpu_device {int dummy; } ;


 int RREG32 (int ) ;
 int mmMC_SEQ_MISC0 ;

__attribute__((used)) static bool gfx_v6_0_lbpw_supported(struct amdgpu_device *adev)
{
 u32 tmp;


 tmp = RREG32(mmMC_SEQ_MISC0);
 if ((tmp & 0xF0000000) == 0xB0000000)
  return 1;
 return 0;
}
