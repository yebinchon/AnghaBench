
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thermal_cooling_device {struct aspeed_cooling_device* devdata; } ;
struct aspeed_cooling_device {unsigned long max_state; } ;



__attribute__((used)) static int
aspeed_pwm_cz_get_max_state(struct thermal_cooling_device *tcdev,
       unsigned long *state)
{
 struct aspeed_cooling_device *cdev = tcdev->devdata;

 *state = cdev->max_state;

 return 0;
}
