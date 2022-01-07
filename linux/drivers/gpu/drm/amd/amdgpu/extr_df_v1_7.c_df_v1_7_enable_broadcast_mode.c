
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct amdgpu_device {int dummy; } ;


 int DF ;
 int FabricConfigAccessControl__CfgRegInstAccEn_MASK ;
 int RREG32_SOC15 (int ,int ,int ) ;
 int WREG32_SOC15 (int ,int ,int ,int ) ;
 int mmFabricConfigAccessControl ;
 int mmFabricConfigAccessControl_DEFAULT ;

__attribute__((used)) static void df_v1_7_enable_broadcast_mode(struct amdgpu_device *adev,
                                          bool enable)
{
 u32 tmp;

 if (enable) {
  tmp = RREG32_SOC15(DF, 0, mmFabricConfigAccessControl);
  tmp &= ~FabricConfigAccessControl__CfgRegInstAccEn_MASK;
  WREG32_SOC15(DF, 0, mmFabricConfigAccessControl, tmp);
 } else
  WREG32_SOC15(DF, 0, mmFabricConfigAccessControl,
        mmFabricConfigAccessControl_DEFAULT);
}
