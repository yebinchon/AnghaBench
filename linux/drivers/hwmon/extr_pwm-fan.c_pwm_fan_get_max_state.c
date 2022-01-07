
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thermal_cooling_device {struct pwm_fan_ctx* devdata; } ;
struct pwm_fan_ctx {unsigned long pwm_fan_max_state; } ;


 int EINVAL ;

__attribute__((used)) static int pwm_fan_get_max_state(struct thermal_cooling_device *cdev,
     unsigned long *state)
{
 struct pwm_fan_ctx *ctx = cdev->devdata;

 if (!ctx)
  return -EINVAL;

 *state = ctx->pwm_fan_max_state;

 return 0;
}
