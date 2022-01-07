
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radeon_device {int usec_timeout; } ;


 int CG_SCLK_STATUS ;
 int RREG32 (int ) ;
 int SCLK_OVERCLK_DETECT ;
 int sumo_set_forced_mode (struct radeon_device*,int) ;
 int udelay (int) ;

__attribute__((used)) static void sumo_set_forced_mode_enabled(struct radeon_device *rdev)
{
 int i;

 sumo_set_forced_mode(rdev, 1);
 for (i = 0; i < rdev->usec_timeout; i++) {
  if (RREG32(CG_SCLK_STATUS) & SCLK_OVERCLK_DETECT)
   break;
  udelay(1);
 }
}
