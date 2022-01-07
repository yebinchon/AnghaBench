
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
typedef int u32 ;
struct TYPE_2__ {scalar_t__ no_fan; } ;
struct radeon_device {TYPE_1__ pm; } ;


 int CG_FDO_CTRL1 ;
 int CG_THERMAL_STATUS ;
 int EINVAL ;
 int ENOENT ;
 int FDO_PWM_DUTY_MASK ;
 int FDO_PWM_DUTY_SHIFT ;
 int FMAX_DUTY100_MASK ;
 int FMAX_DUTY100_SHIFT ;
 int RREG32 (int ) ;
 int do_div (int,int) ;

int si_fan_ctrl_get_fan_speed_percent(struct radeon_device *rdev,
          u32 *speed)
{
 u32 duty, duty100;
 u64 tmp64;

 if (rdev->pm.no_fan)
  return -ENOENT;

 duty100 = (RREG32(CG_FDO_CTRL1) & FMAX_DUTY100_MASK) >> FMAX_DUTY100_SHIFT;
 duty = (RREG32(CG_THERMAL_STATUS) & FDO_PWM_DUTY_MASK) >> FDO_PWM_DUTY_SHIFT;

 if (duty100 == 0)
  return -EINVAL;

 tmp64 = (u64)duty * 100;
 do_div(tmp64, duty100);
 *speed = (u32)tmp64;

 if (*speed > 100)
  *speed = 100;

 return 0;
}
