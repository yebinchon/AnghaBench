
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct amdgpu_device {int dummy; } ;


 int RREG32_SOC15 (int ,int ,int ) ;
 int SOC15_REG_OFFSET (int ,int ,int ) ;
 int SOC15_WAIT_ON_RREG (int ,int ,int ,int,int,int) ;
 int UVD ;
 int UVD_POWER_STATUS__UVD_PG_MODE_MASK ;
 int UVD_POWER_STATUS__UVD_POWER_STATUS_MASK ;
 int UVD_POWER_STATUS__UVD_POWER_STATUS_TILES_OFF ;
 int WREG32_P (int ,int ,int ) ;
 int mmUVD_JRBC_RB_RPTR ;
 int mmUVD_JRBC_RB_WPTR ;
 int mmUVD_POWER_STATUS ;
 int mmUVD_RBC_RB_RPTR ;
 int mmUVD_RBC_RB_WPTR ;
 int mmUVD_RB_RPTR ;
 int mmUVD_RB_RPTR2 ;
 int mmUVD_RB_WPTR ;
 int mmUVD_RB_WPTR2 ;

__attribute__((used)) static int vcn_v1_0_stop_dpg_mode(struct amdgpu_device *adev)
{
 int ret_code = 0;
 uint32_t tmp;


 SOC15_WAIT_ON_RREG(UVD, 0, mmUVD_POWER_STATUS,
   UVD_POWER_STATUS__UVD_POWER_STATUS_TILES_OFF,
   UVD_POWER_STATUS__UVD_POWER_STATUS_MASK, ret_code);


 tmp = RREG32_SOC15(UVD, 0, mmUVD_RB_WPTR);
 SOC15_WAIT_ON_RREG(UVD, 0, mmUVD_RB_RPTR, tmp, 0xFFFFFFFF, ret_code);

 tmp = RREG32_SOC15(UVD, 0, mmUVD_RB_WPTR2);
 SOC15_WAIT_ON_RREG(UVD, 0, mmUVD_RB_RPTR2, tmp, 0xFFFFFFFF, ret_code);

 tmp = RREG32_SOC15(UVD, 0, mmUVD_JRBC_RB_WPTR);
 SOC15_WAIT_ON_RREG(UVD, 0, mmUVD_JRBC_RB_RPTR, tmp, 0xFFFFFFFF, ret_code);

 tmp = RREG32_SOC15(UVD, 0, mmUVD_RBC_RB_WPTR) & 0x7FFFFFFF;
 SOC15_WAIT_ON_RREG(UVD, 0, mmUVD_RBC_RB_RPTR, tmp, 0xFFFFFFFF, ret_code);

 SOC15_WAIT_ON_RREG(UVD, 0, mmUVD_POWER_STATUS,
  UVD_POWER_STATUS__UVD_POWER_STATUS_TILES_OFF,
  UVD_POWER_STATUS__UVD_POWER_STATUS_MASK, ret_code);


 WREG32_P(SOC15_REG_OFFSET(UVD, 0, mmUVD_POWER_STATUS), 0,
   ~UVD_POWER_STATUS__UVD_PG_MODE_MASK);

 return 0;
}
