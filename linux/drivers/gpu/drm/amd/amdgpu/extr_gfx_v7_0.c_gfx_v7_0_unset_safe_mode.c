
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct amdgpu_device {int dummy; } ;


 int WREG32 (int ,int) ;
 int mmRLC_GPR_REG2 ;

__attribute__((used)) static void gfx_v7_0_unset_safe_mode(struct amdgpu_device *adev)
{
 u32 tmp;

 tmp = 0x1 | (0 << 1);
 WREG32(mmRLC_GPR_REG2, tmp);
}
