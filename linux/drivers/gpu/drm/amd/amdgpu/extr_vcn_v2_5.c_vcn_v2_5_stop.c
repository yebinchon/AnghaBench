
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_2__ {int num_vcn_inst; int harvest_config; } ;
struct amdgpu_device {TYPE_1__ vcn; } ;


 int RREG32_SOC15 (int ,int,int ) ;
 int SOC15_REG_OFFSET (int ,int,int ) ;
 int SOC15_WAIT_ON_RREG (int ,int,int ,int,int,int) ;
 int UVD ;
 int UVD_LMI_CTRL2__STALL_ARB_UMC_MASK ;
 int UVD_LMI_STATUS__READ_CLEAN_MASK ;
 int UVD_LMI_STATUS__UMC_READ_CLEAN_RAW_MASK ;
 int UVD_LMI_STATUS__UMC_WRITE_CLEAN_RAW_MASK ;
 int UVD_LMI_STATUS__VCPU_LMI_WRITE_CLEAN_MASK ;
 int UVD_LMI_STATUS__WRITE_CLEAN_MASK ;
 int UVD_LMI_STATUS__WRITE_CLEAN_RAW_MASK ;
 int UVD_POWER_STATUS__UVD_POWER_STATUS_MASK ;
 int UVD_RB_ARB_CTRL__VCPU_DIS_MASK ;
 int UVD_STATUS__IDLE ;
 int UVD_VCPU_CNTL__BLK_RST_MASK ;
 int UVD_VCPU_CNTL__CLK_EN_MASK ;
 int VCN ;
 int WREG32_P (int ,int ,int ) ;
 int WREG32_SOC15 (int ,int,int ,int) ;
 int jpeg_v2_5_stop (struct amdgpu_device*) ;
 int mmUVD_LMI_CTRL2 ;
 int mmUVD_LMI_STATUS ;
 int mmUVD_POWER_STATUS ;
 int mmUVD_RB_ARB_CTRL ;
 int mmUVD_STATUS ;
 int mmUVD_VCPU_CNTL ;
 int vcn_v2_5_enable_clock_gating (struct amdgpu_device*) ;

__attribute__((used)) static int vcn_v2_5_stop(struct amdgpu_device *adev)
{
 uint32_t tmp;
 int i, r;

 r = jpeg_v2_5_stop(adev);
 if (r)
  return r;

 for (i = 0; i < adev->vcn.num_vcn_inst; ++i) {
  if (adev->vcn.harvest_config & (1 << i))
   continue;

  SOC15_WAIT_ON_RREG(VCN, i, mmUVD_STATUS, UVD_STATUS__IDLE, 0x7, r);
  if (r)
   return r;

  tmp = UVD_LMI_STATUS__VCPU_LMI_WRITE_CLEAN_MASK |
   UVD_LMI_STATUS__READ_CLEAN_MASK |
   UVD_LMI_STATUS__WRITE_CLEAN_MASK |
   UVD_LMI_STATUS__WRITE_CLEAN_RAW_MASK;
  SOC15_WAIT_ON_RREG(VCN, i, mmUVD_LMI_STATUS, tmp, tmp, r);
  if (r)
   return r;


  tmp = RREG32_SOC15(VCN, i, mmUVD_LMI_CTRL2);
  tmp |= UVD_LMI_CTRL2__STALL_ARB_UMC_MASK;
  WREG32_SOC15(VCN, i, mmUVD_LMI_CTRL2, tmp);

  tmp = UVD_LMI_STATUS__UMC_READ_CLEAN_RAW_MASK|
   UVD_LMI_STATUS__UMC_WRITE_CLEAN_RAW_MASK;
  SOC15_WAIT_ON_RREG(VCN, i, mmUVD_LMI_STATUS, tmp, tmp, r);
  if (r)
   return r;


  WREG32_P(SOC15_REG_OFFSET(UVD, i, mmUVD_RB_ARB_CTRL),
   UVD_RB_ARB_CTRL__VCPU_DIS_MASK,
   ~UVD_RB_ARB_CTRL__VCPU_DIS_MASK);


  WREG32_P(SOC15_REG_OFFSET(UVD, i, mmUVD_VCPU_CNTL),
   UVD_VCPU_CNTL__BLK_RST_MASK,
   ~UVD_VCPU_CNTL__BLK_RST_MASK);


  WREG32_P(SOC15_REG_OFFSET(UVD, i, mmUVD_VCPU_CNTL), 0,
   ~(UVD_VCPU_CNTL__CLK_EN_MASK));


  WREG32_SOC15(VCN, i, mmUVD_STATUS, 0);

  vcn_v2_5_enable_clock_gating(adev);


  WREG32_P(SOC15_REG_OFFSET(UVD, i, mmUVD_POWER_STATUS),
   UVD_POWER_STATUS__UVD_POWER_STATUS_MASK,
   ~UVD_POWER_STATUS__UVD_POWER_STATUS_MASK);
 }

 return 0;
}
