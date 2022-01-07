
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radeon_device {int dummy; } ;
typedef enum radeon_hpd_id { ____Placeholder_radeon_hpd_id } radeon_hpd_id ;


 int DC_HPDx_INT_STATUS_REG (int) ;
 int DC_HPDx_SENSE ;
 int RADEON_HPD_NONE ;
 int RREG32 (int ) ;

bool evergreen_hpd_sense(struct radeon_device *rdev, enum radeon_hpd_id hpd)
{
 if (hpd == RADEON_HPD_NONE)
  return 0;

 return !!(RREG32(DC_HPDx_INT_STATUS_REG(hpd)) & DC_HPDx_SENSE);
}
