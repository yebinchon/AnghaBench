
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radeon_device {int dummy; } ;
typedef enum radeon_hpd_id { ____Placeholder_radeon_hpd_id } radeon_hpd_id ;


 int DC_HPDx_INT_CONTROL (int) ;
 int DC_HPDx_INT_POLARITY ;
 int RADEON_HPD_NONE ;
 int WREG32_AND (int ,int ) ;
 int WREG32_OR (int ,int ) ;
 int evergreen_hpd_sense (struct radeon_device*,int) ;

void evergreen_hpd_set_polarity(struct radeon_device *rdev,
    enum radeon_hpd_id hpd)
{
 bool connected = evergreen_hpd_sense(rdev, hpd);

 if (hpd == RADEON_HPD_NONE)
  return;

 if (connected)
  WREG32_AND(DC_HPDx_INT_CONTROL(hpd), ~DC_HPDx_INT_POLARITY);
 else
  WREG32_OR(DC_HPDx_INT_CONTROL(hpd), DC_HPDx_INT_POLARITY);
}
