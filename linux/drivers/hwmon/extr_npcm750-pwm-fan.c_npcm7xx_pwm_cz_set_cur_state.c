
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thermal_cooling_device {struct npcm7xx_cooling_device* devdata; } ;
struct npcm7xx_cooling_device {unsigned long max_state; unsigned long cur_state; int * cooling_levels; int pwm_port; int data; } ;


 int EINVAL ;
 int npcm7xx_pwm_config_set (int ,int ,int ) ;

__attribute__((used)) static int
npcm7xx_pwm_cz_set_cur_state(struct thermal_cooling_device *tcdev,
        unsigned long state)
{
 struct npcm7xx_cooling_device *cdev = tcdev->devdata;
 int ret;

 if (state > cdev->max_state)
  return -EINVAL;

 cdev->cur_state = state;
 ret = npcm7xx_pwm_config_set(cdev->data, cdev->pwm_port,
         cdev->cooling_levels[cdev->cur_state]);

 return ret;
}
