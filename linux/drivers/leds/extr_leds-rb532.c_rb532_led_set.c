
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct led_classdev {int dummy; } ;
typedef enum led_brightness { ____Placeholder_led_brightness } led_brightness ;


 int LO_ULED ;
 int set_latch_u5 (int ,int ) ;

__attribute__((used)) static void rb532_led_set(struct led_classdev *cdev,
     enum led_brightness brightness)
{
 if (brightness)
  set_latch_u5(LO_ULED, 0);

 else
  set_latch_u5(0, LO_ULED);
}
