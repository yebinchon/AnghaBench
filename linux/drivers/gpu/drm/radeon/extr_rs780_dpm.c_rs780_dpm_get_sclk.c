
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_3__ {int requested_ps; } ;
struct TYPE_4__ {TYPE_1__ dpm; } ;
struct radeon_device {TYPE_2__ pm; } ;
struct igp_ps {int sclk_high; int sclk_low; } ;


 struct igp_ps* rs780_get_ps (int ) ;

u32 rs780_dpm_get_sclk(struct radeon_device *rdev, bool low)
{
 struct igp_ps *requested_state = rs780_get_ps(rdev->pm.dpm.requested_ps);

 if (low)
  return requested_state->sclk_low;
 else
  return requested_state->sclk_high;
}
