
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct led_flash_setting {int val; } ;
struct led_classdev {scalar_t__ brightness; } ;
struct led_classdev_flash {struct led_flash_setting timeout; struct led_classdev led_cdev; } ;
struct aat1290_led {int movie_mode; int lock; int gpio_en_set; int gpio_fl_en; } ;


 int aat1290_set_flash_safety_timer (struct aat1290_led*,int ) ;
 struct aat1290_led* fled_cdev_to_led (struct led_classdev_flash*) ;
 int gpiod_direction_output (int ,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int aat1290_led_flash_strobe_set(struct led_classdev_flash *fled_cdev,
      bool state)

{
 struct aat1290_led *led = fled_cdev_to_led(fled_cdev);
 struct led_classdev *led_cdev = &fled_cdev->led_cdev;
 struct led_flash_setting *timeout = &fled_cdev->timeout;

 mutex_lock(&led->lock);

 if (state) {
  aat1290_set_flash_safety_timer(led, timeout->val);
  gpiod_direction_output(led->gpio_fl_en, 1);
 } else {
  gpiod_direction_output(led->gpio_fl_en, 0);
  gpiod_direction_output(led->gpio_en_set, 0);
 }







 led_cdev->brightness = 0;
 led->movie_mode = 0;

 mutex_unlock(&led->lock);

 return 0;
}
