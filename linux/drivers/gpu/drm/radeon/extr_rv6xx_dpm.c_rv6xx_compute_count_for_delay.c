
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_3__ {int reference_freq; } ;
struct TYPE_4__ {TYPE_1__ spll; } ;
struct radeon_device {TYPE_2__ clock; } ;


 int rv6xx_scale_count_given_unit (struct radeon_device*,int,int) ;

__attribute__((used)) static u32 rv6xx_compute_count_for_delay(struct radeon_device *rdev,
      u32 delay_us, u32 unit)
{
 u32 ref_clk = rdev->clock.spll.reference_freq;

 return rv6xx_scale_count_given_unit(rdev, delay_us * (ref_clk / 100), unit);
}
