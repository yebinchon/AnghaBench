
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u32 ;
struct led_classdev {void* blink_delay_off; void* blink_delay_on; int dev; } ;


 void* DEFAULT_DELAY ;
 int dev_warn (int ,char*,unsigned int) ;
 int kfree (void**) ;
 void** led_get_default_pattern (struct led_classdev*,unsigned int*) ;

__attribute__((used)) static void pattern_init(struct led_classdev *led_cdev)
{
 u32 *pattern;
 unsigned int size = 0;

 pattern = led_get_default_pattern(led_cdev, &size);
 if (!pattern)
  goto out_default;

 if (size != 2) {
  dev_warn(led_cdev->dev,
    "Expected 2 but got %u values for delays pattern\n",
    size);
  goto out_default;
 }

 led_cdev->blink_delay_on = pattern[0];
 led_cdev->blink_delay_off = pattern[1];
 kfree(pattern);

 return;

out_default:
 kfree(pattern);
 led_cdev->blink_delay_on = DEFAULT_DELAY;
 led_cdev->blink_delay_off = DEFAULT_DELAY;
}
