
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_4__ {int mclk; } ;
struct TYPE_3__ {int mclk; } ;
struct rv7xx_ps {TYPE_2__ high; TYPE_1__ low; } ;
struct radeon_device {int dummy; } ;
struct evergreen_power_info {int requested_rps; } ;


 struct evergreen_power_info* evergreen_get_pi (struct radeon_device*) ;
 struct rv7xx_ps* rv770_get_ps (int *) ;

u32 btc_dpm_get_mclk(struct radeon_device *rdev, bool low)
{
 struct evergreen_power_info *eg_pi = evergreen_get_pi(rdev);
 struct rv7xx_ps *requested_state = rv770_get_ps(&eg_pi->requested_rps);

 if (low)
  return requested_state->low.mclk;
 else
  return requested_state->high.mclk;
}
