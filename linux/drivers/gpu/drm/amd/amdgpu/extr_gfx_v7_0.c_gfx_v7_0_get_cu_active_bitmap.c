
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_3__ {int max_cu_per_sh; } ;
struct TYPE_4__ {TYPE_1__ config; } ;
struct amdgpu_device {TYPE_2__ gfx; } ;


 int CC_GC_SHADER_ARRAY_CONFIG__INACTIVE_CUS_MASK ;
 int CC_GC_SHADER_ARRAY_CONFIG__INACTIVE_CUS__SHIFT ;
 int RREG32 (int ) ;
 int amdgpu_gfx_create_bitmask (int ) ;
 int mmCC_GC_SHADER_ARRAY_CONFIG ;
 int mmGC_USER_SHADER_ARRAY_CONFIG ;

__attribute__((used)) static u32 gfx_v7_0_get_cu_active_bitmap(struct amdgpu_device *adev)
{
 u32 data, mask;

 data = RREG32(mmCC_GC_SHADER_ARRAY_CONFIG);
 data |= RREG32(mmGC_USER_SHADER_ARRAY_CONFIG);

 data &= CC_GC_SHADER_ARRAY_CONFIG__INACTIVE_CUS_MASK;
 data >>= CC_GC_SHADER_ARRAY_CONFIG__INACTIVE_CUS__SHIFT;

 mask = amdgpu_gfx_create_bitmask(adev->gfx.config.max_cu_per_sh);

 return (~data) & mask;
}
