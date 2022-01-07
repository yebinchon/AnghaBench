
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct led_classdev {int dev; } ;


 int dev_warn (int ,char*,...) ;
 int kfree (int *) ;
 int * led_get_default_pattern (struct led_classdev*,unsigned int*) ;
 int pattern_trig_store_patterns (struct led_classdev*,int *,int *,unsigned int,int) ;

__attribute__((used)) static void pattern_init(struct led_classdev *led_cdev)
{
 unsigned int size = 0;
 u32 *pattern;
 int err;

 pattern = led_get_default_pattern(led_cdev, &size);
 if (!pattern)
  return;

 if (size % 2) {
  dev_warn(led_cdev->dev, "Expected pattern of tuples\n");
  goto out;
 }

 err = pattern_trig_store_patterns(led_cdev, ((void*)0), pattern, size, 0);
 if (err < 0)
  dev_warn(led_cdev->dev,
    "Pattern initialization failed with error %d\n", err);

out:
 kfree(pattern);
}
