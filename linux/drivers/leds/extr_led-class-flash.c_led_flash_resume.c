
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int val; } ;
struct TYPE_3__ {int val; } ;
struct led_classdev_flash {TYPE_2__ timeout; TYPE_1__ brightness; } ;
struct led_classdev {int dummy; } ;


 int call_flash_op (struct led_classdev_flash*,int ,int ) ;
 int flash_brightness_set ;
 struct led_classdev_flash* lcdev_to_flcdev (struct led_classdev*) ;
 int timeout_set ;

__attribute__((used)) static void led_flash_resume(struct led_classdev *led_cdev)
{
 struct led_classdev_flash *fled_cdev = lcdev_to_flcdev(led_cdev);

 call_flash_op(fled_cdev, flash_brightness_set,
     fled_cdev->brightness.val);
 call_flash_op(fled_cdev, timeout_set, fled_cdev->timeout.val);
}
