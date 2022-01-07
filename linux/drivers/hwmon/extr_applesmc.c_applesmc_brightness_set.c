
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct led_classdev {int dev; } ;
typedef enum led_brightness { ____Placeholder_led_brightness } led_brightness ;


 int applesmc_led_wq ;
 int* backlight_state ;
 int backlight_work ;
 scalar_t__ debug ;
 int dev_dbg (int ,char*) ;
 int queue_work (int ,int *) ;

__attribute__((used)) static void applesmc_brightness_set(struct led_classdev *led_cdev,
      enum led_brightness value)
{
 int ret;

 backlight_state[0] = value;
 ret = queue_work(applesmc_led_wq, &backlight_work);

 if (debug && (!ret))
  dev_dbg(led_cdev->dev, "work was already on the queue.\n");
}
