
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct led_classdev {int brightness; } ;



__attribute__((used)) static inline int led_get_brightness(struct led_classdev *led_cdev)
{
 return led_cdev->brightness;
}
