
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct amdgpu_device {int dummy; } ;


 int GC ;
 int RLC_SAFE_MODE__CMD_MASK ;
 int WREG32_SOC15 (int ,int ,int ,int ) ;
 int mmRLC_SAFE_MODE ;

__attribute__((used)) static void gfx_v9_0_unset_safe_mode(struct amdgpu_device *adev)
{
 uint32_t data;

 data = RLC_SAFE_MODE__CMD_MASK;
 WREG32_SOC15(GC, 0, mmRLC_SAFE_MODE, data);
}
