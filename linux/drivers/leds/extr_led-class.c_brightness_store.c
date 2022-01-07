
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct led_classdev {int led_access; int set_brightness_work; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef size_t ssize_t ;


 size_t EBUSY ;
 unsigned long LED_OFF ;
 struct led_classdev* dev_get_drvdata (struct device*) ;
 int flush_work (int *) ;
 size_t kstrtoul (char const*,int,unsigned long*) ;
 int led_set_brightness (struct led_classdev*,unsigned long) ;
 scalar_t__ led_sysfs_is_disabled (struct led_classdev*) ;
 int led_trigger_remove (struct led_classdev*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static ssize_t brightness_store(struct device *dev,
  struct device_attribute *attr, const char *buf, size_t size)
{
 struct led_classdev *led_cdev = dev_get_drvdata(dev);
 unsigned long state;
 ssize_t ret;

 mutex_lock(&led_cdev->led_access);

 if (led_sysfs_is_disabled(led_cdev)) {
  ret = -EBUSY;
  goto unlock;
 }

 ret = kstrtoul(buf, 10, &state);
 if (ret)
  goto unlock;

 if (state == LED_OFF)
  led_trigger_remove(led_cdev);
 led_set_brightness(led_cdev, state);
 flush_work(&led_cdev->set_brightness_work);

 ret = size;
unlock:
 mutex_unlock(&led_cdev->led_access);
 return ret;
}
