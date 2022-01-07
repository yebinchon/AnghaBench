
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct amdgpu_device {int dummy; } ;


 int GRBM_GFX_INDEX ;
 int GRBM_GFX_INDEX__SE_BROADCAST_WRITES_MASK ;
 int GRBM_GFX_INDEX__SE_INDEX__SHIFT ;
 int GRBM_GFX_INDEX__SH_BROADCAST_WRITES_MASK ;
 int GRBM_GFX_INDEX__SH_INDEX__SHIFT ;
 int INSTANCE_BROADCAST_WRITES ;
 int INSTANCE_INDEX ;
 int REG_SET_FIELD (int ,int ,int ,int) ;
 int WREG32 (int ,int) ;
 int mmGRBM_GFX_INDEX ;

__attribute__((used)) static void gfx_v7_0_select_se_sh(struct amdgpu_device *adev,
      u32 se_num, u32 sh_num, u32 instance)
{
 u32 data;

 if (instance == 0xffffffff)
  data = REG_SET_FIELD(0, GRBM_GFX_INDEX, INSTANCE_BROADCAST_WRITES, 1);
 else
  data = REG_SET_FIELD(0, GRBM_GFX_INDEX, INSTANCE_INDEX, instance);

 if ((se_num == 0xffffffff) && (sh_num == 0xffffffff))
  data |= GRBM_GFX_INDEX__SH_BROADCAST_WRITES_MASK |
   GRBM_GFX_INDEX__SE_BROADCAST_WRITES_MASK;
 else if (se_num == 0xffffffff)
  data |= GRBM_GFX_INDEX__SE_BROADCAST_WRITES_MASK |
   (sh_num << GRBM_GFX_INDEX__SH_INDEX__SHIFT);
 else if (sh_num == 0xffffffff)
  data |= GRBM_GFX_INDEX__SH_BROADCAST_WRITES_MASK |
   (se_num << GRBM_GFX_INDEX__SE_INDEX__SHIFT);
 else
  data |= (sh_num << GRBM_GFX_INDEX__SH_INDEX__SHIFT) |
   (se_num << GRBM_GFX_INDEX__SE_INDEX__SHIFT);
 WREG32(mmGRBM_GFX_INDEX, data);
}
