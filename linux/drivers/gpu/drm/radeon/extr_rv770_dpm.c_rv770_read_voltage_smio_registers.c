
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rv7xx_power_info {int s0_vid_lower_smio_cntl; } ;
struct radeon_device {int dummy; } ;


 int RREG32 (int ) ;
 int S0_VID_LOWER_SMIO_CNTL ;
 struct rv7xx_power_info* rv770_get_pi (struct radeon_device*) ;

void rv770_read_voltage_smio_registers(struct radeon_device *rdev)
{
 struct rv7xx_power_info *pi = rv770_get_pi(rdev);

 pi->s0_vid_lower_smio_cntl =
  RREG32(S0_VID_LOWER_SMIO_CNTL);
}
