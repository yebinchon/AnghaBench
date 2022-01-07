
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radeon_ps {scalar_t__ evclk; scalar_t__ ecclk; } ;
struct radeon_device {int dummy; } ;


 int radeon_set_vce_clocks (struct radeon_device*,scalar_t__,scalar_t__) ;
 int vce_v1_0_enable_mgcg (struct radeon_device*,int) ;

__attribute__((used)) static void si_set_vce_clock(struct radeon_device *rdev,
        struct radeon_ps *new_rps,
        struct radeon_ps *old_rps)
{
 if ((old_rps->evclk != new_rps->evclk) ||
     (old_rps->ecclk != new_rps->ecclk)) {

  if (new_rps->evclk || new_rps->ecclk)
   vce_v1_0_enable_mgcg(rdev, 0);
  else
   vce_v1_0_enable_mgcg(rdev, 1);
  radeon_set_vce_clocks(rdev, new_rps->evclk, new_rps->ecclk);
 }
}
