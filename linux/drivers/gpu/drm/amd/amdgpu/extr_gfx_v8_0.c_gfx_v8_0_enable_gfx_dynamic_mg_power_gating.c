
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct amdgpu_device {int dummy; } ;


 int DYN_PER_CU_PG_ENABLE ;
 int RLC_PG_CNTL ;
 int WREG32_FIELD (int ,int ,int) ;

__attribute__((used)) static void gfx_v8_0_enable_gfx_dynamic_mg_power_gating(struct amdgpu_device *adev,
       bool enable)
{
 WREG32_FIELD(RLC_PG_CNTL, DYN_PER_CU_PG_ENABLE, enable ? 1 : 0);
}
