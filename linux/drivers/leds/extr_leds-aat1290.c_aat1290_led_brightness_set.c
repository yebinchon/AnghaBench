
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct led_classdev_flash {int dummy; } ;
struct led_classdev {int dummy; } ;
struct aat1290_led {int movie_mode; int lock; int gpio_en_set; int gpio_fl_en; } ;
typedef enum led_brightness { ____Placeholder_led_brightness } led_brightness ;


 int AAT1290_MAX_MM_CURR_PERCENT_0 ;
 int AAT1290_MM_CURRENT_RATIO_ADDR ;
 int AAT1290_MM_TO_FL_1_92 ;
 int AAT1290_MOVIE_MODE_CONFIG_ADDR ;
 int AAT1290_MOVIE_MODE_CURRENT_ADDR ;
 int AAT1290_MOVIE_MODE_ON ;
 int aat1290_as2cwire_write (struct aat1290_led*,int ,int) ;
 struct aat1290_led* fled_cdev_to_led (struct led_classdev_flash*) ;
 int gpiod_direction_output (int ,int ) ;
 struct led_classdev_flash* led_cdev_to_fled_cdev (struct led_classdev*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int aat1290_led_brightness_set(struct led_classdev *led_cdev,
     enum led_brightness brightness)
{
 struct led_classdev_flash *fled_cdev = led_cdev_to_fled_cdev(led_cdev);
 struct aat1290_led *led = fled_cdev_to_led(fled_cdev);

 mutex_lock(&led->lock);

 if (brightness == 0) {
  gpiod_direction_output(led->gpio_fl_en, 0);
  gpiod_direction_output(led->gpio_en_set, 0);
  led->movie_mode = 0;
 } else {
  if (!led->movie_mode) {
   aat1290_as2cwire_write(led,
    AAT1290_MM_CURRENT_RATIO_ADDR,
    AAT1290_MM_TO_FL_1_92);
   led->movie_mode = 1;
  }

  aat1290_as2cwire_write(led, AAT1290_MOVIE_MODE_CURRENT_ADDR,
    AAT1290_MAX_MM_CURR_PERCENT_0 - brightness);
  aat1290_as2cwire_write(led, AAT1290_MOVIE_MODE_CONFIG_ADDR,
    AAT1290_MOVIE_MODE_ON);
 }

 mutex_unlock(&led->lock);

 return 0;
}
