
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_2__ {int num_vcn_inst; int harvest_config; } ;
struct amdgpu_device {TYPE_1__ vcn; } ;


 int JPEG_CGC_GATE__JMCIF_MASK ;
 int JPEG_CGC_GATE__JPEG2_DEC_MASK ;
 int JPEG_CGC_GATE__JPEG_DEC_MASK ;
 int JPEG_CGC_GATE__JRBBM_MASK ;
 int RREG32_SOC15 (int ,int,int ) ;
 int SOC15_REG_OFFSET (int ,int,int ) ;
 int UVD ;
 int UVD_JMI_CNTL__SOFT_RESET_MASK ;
 int UVD_JPEG_POWER_STATUS__JPEG_POWER_STATUS_MASK ;
 int VCN ;
 int WREG32_P (int ,int ,int ) ;
 int WREG32_SOC15 (int ,int,int ,int) ;
 int mmJPEG_CGC_GATE ;
 int mmUVD_JMI_CNTL ;
 int mmUVD_JPEG_POWER_STATUS ;

__attribute__((used)) static int jpeg_v2_5_stop(struct amdgpu_device *adev)
{
 uint32_t tmp;
 int i;

 for (i = 0; i < adev->vcn.num_vcn_inst; ++i) {
  if (adev->vcn.harvest_config & (1 << i))
   continue;

  WREG32_P(SOC15_REG_OFFSET(UVD, i, mmUVD_JMI_CNTL),
   UVD_JMI_CNTL__SOFT_RESET_MASK,
   ~UVD_JMI_CNTL__SOFT_RESET_MASK);

  tmp = RREG32_SOC15(VCN, i, mmJPEG_CGC_GATE);
  tmp |= (JPEG_CGC_GATE__JPEG_DEC_MASK
   |JPEG_CGC_GATE__JPEG2_DEC_MASK
   |JPEG_CGC_GATE__JMCIF_MASK
   |JPEG_CGC_GATE__JRBBM_MASK);
  WREG32_SOC15(VCN, i, mmJPEG_CGC_GATE, tmp);


  WREG32_P(SOC15_REG_OFFSET(UVD, i, mmUVD_JPEG_POWER_STATUS),
   UVD_JPEG_POWER_STATUS__JPEG_POWER_STATUS_MASK,
   ~UVD_JPEG_POWER_STATUS__JPEG_POWER_STATUS_MASK);
 }

 return 0;
}
