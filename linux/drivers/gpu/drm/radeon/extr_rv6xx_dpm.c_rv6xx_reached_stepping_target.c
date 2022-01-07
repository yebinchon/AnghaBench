
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rv6xx_sclk_stepping {scalar_t__ vco_frequency; } ;
struct radeon_device {int dummy; } ;



__attribute__((used)) static bool rv6xx_reached_stepping_target(struct radeon_device *rdev,
       struct rv6xx_sclk_stepping *cur,
       struct rv6xx_sclk_stepping *target,
       bool increasing_vco)
{
 return (increasing_vco && (cur->vco_frequency >= target->vco_frequency)) ||
  (!increasing_vco && (cur->vco_frequency <= target->vco_frequency));
}
