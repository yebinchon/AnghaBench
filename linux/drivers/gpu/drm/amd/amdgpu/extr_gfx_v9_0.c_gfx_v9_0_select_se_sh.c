
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct amdgpu_device {int dummy; } ;


 int GC ;
 int GRBM_GFX_INDEX ;
 int INSTANCE_BROADCAST_WRITES ;
 int INSTANCE_INDEX ;
 int REG_SET_FIELD (int,int ,int ,int) ;
 int SE_BROADCAST_WRITES ;
 int SE_INDEX ;
 int SH_BROADCAST_WRITES ;
 int SH_INDEX ;
 int WREG32_SOC15_RLC_SHADOW (int ,int ,int ,int) ;
 int mmGRBM_GFX_INDEX ;

__attribute__((used)) static void gfx_v9_0_select_se_sh(struct amdgpu_device *adev, u32 se_num, u32 sh_num, u32 instance)
{
 u32 data;

 if (instance == 0xffffffff)
  data = REG_SET_FIELD(0, GRBM_GFX_INDEX, INSTANCE_BROADCAST_WRITES, 1);
 else
  data = REG_SET_FIELD(0, GRBM_GFX_INDEX, INSTANCE_INDEX, instance);

 if (se_num == 0xffffffff)
  data = REG_SET_FIELD(data, GRBM_GFX_INDEX, SE_BROADCAST_WRITES, 1);
 else
  data = REG_SET_FIELD(data, GRBM_GFX_INDEX, SE_INDEX, se_num);

 if (sh_num == 0xffffffff)
  data = REG_SET_FIELD(data, GRBM_GFX_INDEX, SH_BROADCAST_WRITES, 1);
 else
  data = REG_SET_FIELD(data, GRBM_GFX_INDEX, SH_INDEX, sh_num);

 WREG32_SOC15_RLC_SHADOW(GC, 0, mmGRBM_GFX_INDEX, data);
}
