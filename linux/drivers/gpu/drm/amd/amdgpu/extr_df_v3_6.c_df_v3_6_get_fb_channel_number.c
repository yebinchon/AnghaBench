
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct amdgpu_device {int dummy; } ;


 int DF ;
 int DF_CS_UMC_AON0_DramBaseAddress0__IntLvNumChan_MASK ;
 int DF_CS_UMC_AON0_DramBaseAddress0__IntLvNumChan__SHIFT ;
 int RREG32_SOC15 (int ,int ,int ) ;
 int mmDF_CS_UMC_AON0_DramBaseAddress0 ;

__attribute__((used)) static u32 df_v3_6_get_fb_channel_number(struct amdgpu_device *adev)
{
 u32 tmp;

 tmp = RREG32_SOC15(DF, 0, mmDF_CS_UMC_AON0_DramBaseAddress0);
 tmp &= DF_CS_UMC_AON0_DramBaseAddress0__IntLvNumChan_MASK;
 tmp >>= DF_CS_UMC_AON0_DramBaseAddress0__IntLvNumChan__SHIFT;

 return tmp;
}
