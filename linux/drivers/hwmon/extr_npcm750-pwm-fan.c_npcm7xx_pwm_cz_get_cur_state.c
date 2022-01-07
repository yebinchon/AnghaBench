
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thermal_cooling_device {struct npcm7xx_cooling_device* devdata; } ;
struct npcm7xx_cooling_device {unsigned long cur_state; } ;



__attribute__((used)) static int
npcm7xx_pwm_cz_get_cur_state(struct thermal_cooling_device *tcdev,
        unsigned long *state)
{
 struct npcm7xx_cooling_device *cdev = tcdev->devdata;

 *state = cdev->cur_state;

 return 0;
}
