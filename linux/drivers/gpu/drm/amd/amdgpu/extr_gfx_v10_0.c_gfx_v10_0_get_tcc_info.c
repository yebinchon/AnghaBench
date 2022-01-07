
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_3__ {int tcc_disabled_mask; } ;
struct TYPE_4__ {TYPE_1__ config; } ;
struct amdgpu_device {TYPE_2__ gfx; } ;


 int CGTS_TCC_DISABLE ;
 int GC ;
 int HI_TCC_DISABLE ;
 int REG_GET_FIELD (int,int ,int ) ;
 int RREG32_SOC15 (int ,int ,int ) ;
 int TCC_DISABLE ;
 int mmCGTS_TCC_DISABLE ;
 int mmCGTS_USER_TCC_DISABLE ;

__attribute__((used)) static void gfx_v10_0_get_tcc_info(struct amdgpu_device *adev)
{

 uint32_t tcc_disable = RREG32_SOC15(GC, 0, mmCGTS_TCC_DISABLE) |
          RREG32_SOC15(GC, 0, mmCGTS_USER_TCC_DISABLE);

 adev->gfx.config.tcc_disabled_mask =
  REG_GET_FIELD(tcc_disable, CGTS_TCC_DISABLE, TCC_DISABLE) |
  (REG_GET_FIELD(tcc_disable, CGTS_TCC_DISABLE, HI_TCC_DISABLE) << 16);
}
