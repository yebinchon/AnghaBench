
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct led_classdev {int dummy; } ;
struct TYPE_3__ {int addr; } ;
struct apu_led_priv {TYPE_1__ param; } ;
typedef enum led_brightness { ____Placeholder_led_brightness } led_brightness ;
struct TYPE_4__ {int lock; } ;


 int APU1_LEDOFF ;
 int APU1_LEDON ;
 TYPE_2__* apu_led ;
 struct apu_led_priv* cdev_to_priv (struct led_classdev*) ;
 int iowrite8 (int ,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void apu1_led_brightness_set(struct led_classdev *led, enum led_brightness value)
{
 struct apu_led_priv *pled = cdev_to_priv(led);

 spin_lock(&apu_led->lock);
 iowrite8(value ? APU1_LEDON : APU1_LEDOFF, pled->param.addr);
 spin_unlock(&apu_led->lock);
}
