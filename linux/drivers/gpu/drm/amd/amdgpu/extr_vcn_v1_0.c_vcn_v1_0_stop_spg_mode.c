
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct amdgpu_device {int dummy; } ;


 int SOC15_REG_OFFSET (int ,int ,int ) ;
 int SOC15_WAIT_ON_RREG (int ,int ,int ,int,int,int) ;
 int UVD ;
 int UVD_LMI_STATUS__READ_CLEAN_MASK ;
 int UVD_LMI_STATUS__UMC_READ_CLEAN_RAW_MASK ;
 int UVD_LMI_STATUS__UMC_WRITE_CLEAN_RAW_MASK ;
 int UVD_LMI_STATUS__VCPU_LMI_WRITE_CLEAN_MASK ;
 int UVD_LMI_STATUS__WRITE_CLEAN_MASK ;
 int UVD_LMI_STATUS__WRITE_CLEAN_RAW_MASK ;
 int UVD_SOFT_RESET__LMI_SOFT_RESET_MASK ;
 int UVD_SOFT_RESET__LMI_UMC_SOFT_RESET_MASK ;
 int UVD_SOFT_RESET__VCPU_SOFT_RESET_MASK ;
 int UVD_STATUS__IDLE ;
 int UVD_VCPU_CNTL__CLK_EN_MASK ;
 int WREG32_P (int ,int ,int ) ;
 int WREG32_SOC15 (int ,int ,int ,int ) ;
 int mmUVD_LMI_STATUS ;
 int mmUVD_SOFT_RESET ;
 int mmUVD_STATUS ;
 int mmUVD_VCPU_CNTL ;
 int vcn_1_0_enable_static_power_gating (struct amdgpu_device*) ;
 int vcn_v1_0_enable_clock_gating (struct amdgpu_device*) ;

__attribute__((used)) static int vcn_v1_0_stop_spg_mode(struct amdgpu_device *adev)
{
 int ret_code, tmp;

 SOC15_WAIT_ON_RREG(UVD, 0, mmUVD_STATUS, UVD_STATUS__IDLE, 0x7, ret_code);

 tmp = UVD_LMI_STATUS__VCPU_LMI_WRITE_CLEAN_MASK |
  UVD_LMI_STATUS__READ_CLEAN_MASK |
  UVD_LMI_STATUS__WRITE_CLEAN_MASK |
  UVD_LMI_STATUS__WRITE_CLEAN_RAW_MASK;
 SOC15_WAIT_ON_RREG(UVD, 0, mmUVD_LMI_STATUS, tmp, tmp, ret_code);


 WREG32_P(SOC15_REG_OFFSET(UVD, 0, mmUVD_SOFT_RESET),
  UVD_SOFT_RESET__VCPU_SOFT_RESET_MASK,
  ~UVD_SOFT_RESET__VCPU_SOFT_RESET_MASK);

 tmp = UVD_LMI_STATUS__UMC_READ_CLEAN_RAW_MASK |
  UVD_LMI_STATUS__UMC_WRITE_CLEAN_RAW_MASK;
 SOC15_WAIT_ON_RREG(UVD, 0, mmUVD_LMI_STATUS, tmp, tmp, ret_code);


 WREG32_P(SOC15_REG_OFFSET(UVD, 0, mmUVD_VCPU_CNTL), 0,
  ~UVD_VCPU_CNTL__CLK_EN_MASK);


 WREG32_P(SOC15_REG_OFFSET(UVD, 0, mmUVD_SOFT_RESET),
  UVD_SOFT_RESET__LMI_UMC_SOFT_RESET_MASK,
  ~UVD_SOFT_RESET__LMI_UMC_SOFT_RESET_MASK);

 WREG32_P(SOC15_REG_OFFSET(UVD, 0, mmUVD_SOFT_RESET),
  UVD_SOFT_RESET__LMI_SOFT_RESET_MASK,
  ~UVD_SOFT_RESET__LMI_SOFT_RESET_MASK);

 WREG32_SOC15(UVD, 0, mmUVD_STATUS, 0);

 vcn_v1_0_enable_clock_gating(adev);
 vcn_1_0_enable_static_power_gating(adev);
 return 0;
}
