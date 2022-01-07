
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_8__ {int mclk; } ;
struct TYPE_7__ {int mclk; } ;
struct rv6xx_ps {TYPE_4__ high; TYPE_3__ low; } ;
struct TYPE_5__ {int requested_ps; } ;
struct TYPE_6__ {TYPE_1__ dpm; } ;
struct radeon_device {TYPE_2__ pm; } ;


 struct rv6xx_ps* rv6xx_get_ps (int ) ;

u32 rv6xx_dpm_get_mclk(struct radeon_device *rdev, bool low)
{
 struct rv6xx_ps *requested_state = rv6xx_get_ps(rdev->pm.dpm.requested_ps);

 if (low)
  return requested_state->low.mclk;
 else
  return requested_state->high.mclk;
}
