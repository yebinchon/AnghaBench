
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


 int BACKEND_DISABLE ;
 int GC_USER_RB_BACKEND_DISABLE ;
 int REG_GET_FIELD (int,int ,int ) ;
 int RREG32 (int ) ;
 int amdgpu_gfx_create_bitmask (int) ;
 int mmCC_RB_BACKEND_DISABLE ;
 int mmGC_USER_RB_BACKEND_DISABLE ;

__attribute__((used)) static u32 gfx_v6_0_get_rb_active_bitmap(struct amdgpu_device *adev)
{
 u32 data, mask;

 data = RREG32(mmCC_RB_BACKEND_DISABLE) |
  RREG32(mmGC_USER_RB_BACKEND_DISABLE);

 data = REG_GET_FIELD(data, GC_USER_RB_BACKEND_DISABLE, BACKEND_DISABLE);

 mask = amdgpu_gfx_create_bitmask(adev->gfx.config.max_backends_per_se/
      adev->gfx.config.max_sh_per_se);

 return ~data & mask;
}
