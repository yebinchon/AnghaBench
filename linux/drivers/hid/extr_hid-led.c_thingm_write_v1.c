
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct led_classdev {int dummy; } ;
typedef enum led_brightness { ____Placeholder_led_brightness } led_brightness ;


 int _thingm_write (struct led_classdev*,int,int ) ;

__attribute__((used)) static int thingm_write_v1(struct led_classdev *cdev, enum led_brightness br)
{
 return _thingm_write(cdev, br, 0);
}
