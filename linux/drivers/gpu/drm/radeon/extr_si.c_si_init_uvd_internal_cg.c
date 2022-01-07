
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct radeon_device {int dummy; } ;


 int DCM ;
 int RREG32 (int ) ;
 int UVD_CGC_CTRL ;
 int WREG32 (int ,int ) ;
 int si_set_uvd_dcm (struct radeon_device*,int) ;

void si_init_uvd_internal_cg(struct radeon_device *rdev)
{
 bool hw_mode = 1;

 if (hw_mode) {
  si_set_uvd_dcm(rdev, 0);
 } else {
  u32 tmp = RREG32(UVD_CGC_CTRL);
  tmp &= ~DCM;
  WREG32(UVD_CGC_CTRL, tmp);
 }
}
