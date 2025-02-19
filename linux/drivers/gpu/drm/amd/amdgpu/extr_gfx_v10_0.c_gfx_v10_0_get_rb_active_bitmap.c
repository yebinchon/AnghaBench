
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_3__ {int max_backends_per_se; int max_sh_per_se; } ;
struct TYPE_4__ {TYPE_1__ config; } ;
struct amdgpu_device {TYPE_2__ gfx; } ;


 int CC_RB_BACKEND_DISABLE__BACKEND_DISABLE_MASK ;
 int GC ;
 int GC_USER_RB_BACKEND_DISABLE__BACKEND_DISABLE__SHIFT ;
 int RREG32_SOC15 (int ,int ,int ) ;
 int amdgpu_gfx_create_bitmask (int) ;
 int mmCC_RB_BACKEND_DISABLE ;
 int mmGC_USER_RB_BACKEND_DISABLE ;

__attribute__((used)) static u32 gfx_v10_0_get_rb_active_bitmap(struct amdgpu_device *adev)
{
 u32 data, mask;

 data = RREG32_SOC15(GC, 0, mmCC_RB_BACKEND_DISABLE);
 data |= RREG32_SOC15(GC, 0, mmGC_USER_RB_BACKEND_DISABLE);

 data &= CC_RB_BACKEND_DISABLE__BACKEND_DISABLE_MASK;
 data >>= GC_USER_RB_BACKEND_DISABLE__BACKEND_DISABLE__SHIFT;

 mask = amdgpu_gfx_create_bitmask(adev->gfx.config.max_backends_per_se /
      adev->gfx.config.max_sh_per_se);

 return (~data) & mask;
}
