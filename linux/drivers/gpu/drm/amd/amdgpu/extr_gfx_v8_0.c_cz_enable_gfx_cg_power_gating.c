
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct amdgpu_device {int dummy; } ;


 int GFX_POWER_GATING_ENABLE ;
 int RLC_PG_CNTL ;
 int WREG32_FIELD (int ,int ,int) ;

__attribute__((used)) static void cz_enable_gfx_cg_power_gating(struct amdgpu_device *adev,
       bool enable)
{
 WREG32_FIELD(RLC_PG_CNTL, GFX_POWER_GATING_ENABLE, enable ? 1 : 0);
}
