
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct thermal_cooling_device {struct aspeed_cooling_device* devdata; } ;
struct aspeed_cooling_device {unsigned long max_state; unsigned long cur_state; size_t pwm_port; int * cooling_levels; TYPE_1__* priv; } ;
struct TYPE_2__ {int * pwm_port_fan_ctrl; } ;


 int EINVAL ;
 int aspeed_set_pwm_port_fan_ctrl (TYPE_1__*,size_t,int ) ;

__attribute__((used)) static int
aspeed_pwm_cz_set_cur_state(struct thermal_cooling_device *tcdev,
       unsigned long state)
{
 struct aspeed_cooling_device *cdev = tcdev->devdata;

 if (state > cdev->max_state)
  return -EINVAL;

 cdev->cur_state = state;
 cdev->priv->pwm_port_fan_ctrl[cdev->pwm_port] =
     cdev->cooling_levels[cdev->cur_state];
 aspeed_set_pwm_port_fan_ctrl(cdev->priv, cdev->pwm_port,
         cdev->cooling_levels[cdev->cur_state]);

 return 0;
}
