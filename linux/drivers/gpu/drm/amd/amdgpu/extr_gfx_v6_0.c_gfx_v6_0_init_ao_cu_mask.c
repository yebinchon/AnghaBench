
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_3__ {int ao_cu_mask; int number; } ;
struct TYPE_4__ {TYPE_1__ cu_info; } ;
struct amdgpu_device {TYPE_2__ gfx; } ;


 int RLC_MAX_PG_CU__MAX_POWERED_UP_CU_MASK ;
 int RLC_MAX_PG_CU__MAX_POWERED_UP_CU__SHIFT ;
 int RREG32 (int ) ;
 int WREG32 (int ,int) ;
 int mmRLC_MAX_PG_CU ;
 int mmRLC_PG_ALWAYS_ON_CU_MASK ;

__attribute__((used)) static void gfx_v6_0_init_ao_cu_mask(struct amdgpu_device *adev)
{
 u32 tmp;

 WREG32(mmRLC_PG_ALWAYS_ON_CU_MASK, adev->gfx.cu_info.ao_cu_mask);

 tmp = RREG32(mmRLC_MAX_PG_CU);
 tmp &= ~RLC_MAX_PG_CU__MAX_POWERED_UP_CU_MASK;
 tmp |= (adev->gfx.cu_info.number << RLC_MAX_PG_CU__MAX_POWERED_UP_CU__SHIFT);
 WREG32(mmRLC_MAX_PG_CU, tmp);
}
