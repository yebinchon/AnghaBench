
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rv7xx_power_info {int s0_vid_lower_smio_cntl; } ;
struct radeon_device {int dummy; } ;


 int GENERAL_PWRMGT ;
 int RREG32 (int ) ;
 int S0_VID_LOWER_SMIO_CNTL ;
 int S1_VID_LOWER_SMIO_CNTL ;
 int S2_VID_LOWER_SMIO_CNTL ;
 int S3_VID_LOWER_SMIO_CNTL ;
 int SW_SMIO_INDEX (int ) ;
 int SW_SMIO_INDEX_MASK ;
 int SW_SMIO_INDEX_SHIFT ;
 int WREG32 (int ,int) ;
 int WREG32_P (int ,int ,int) ;
 struct rv7xx_power_info* rv770_get_pi (struct radeon_device*) ;

void rv770_reset_smio_status(struct radeon_device *rdev)
{
 struct rv7xx_power_info *pi = rv770_get_pi(rdev);
 u32 sw_smio_index, vid_smio_cntl;

 sw_smio_index =
  (RREG32(GENERAL_PWRMGT) & SW_SMIO_INDEX_MASK) >> SW_SMIO_INDEX_SHIFT;
 switch (sw_smio_index) {
 case 3:
  vid_smio_cntl = RREG32(S3_VID_LOWER_SMIO_CNTL);
  break;
 case 2:
  vid_smio_cntl = RREG32(S2_VID_LOWER_SMIO_CNTL);
  break;
 case 1:
  vid_smio_cntl = RREG32(S1_VID_LOWER_SMIO_CNTL);
  break;
 case 0:
  return;
 default:
  vid_smio_cntl = pi->s0_vid_lower_smio_cntl;
  break;
 }

 WREG32(S0_VID_LOWER_SMIO_CNTL, vid_smio_cntl);
 WREG32_P(GENERAL_PWRMGT, SW_SMIO_INDEX(0), ~SW_SMIO_INDEX_MASK);
}
