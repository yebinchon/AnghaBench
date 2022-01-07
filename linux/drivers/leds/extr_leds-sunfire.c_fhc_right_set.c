
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct led_classdev {int dummy; } ;
typedef enum led_brightness { ____Placeholder_led_brightness } led_brightness ;


 int FHC_CONTROL_RLED ;
 int __fhc_set (struct led_classdev*,int,int ) ;

__attribute__((used)) static void fhc_right_set(struct led_classdev *led_cdev,
     enum led_brightness led_val)
{
 __fhc_set(led_cdev, led_val, FHC_CONTROL_RLED);
}
