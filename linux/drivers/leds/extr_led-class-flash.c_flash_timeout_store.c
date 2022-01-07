
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct led_classdev_flash {int dummy; } ;
struct led_classdev {int led_access; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef size_t ssize_t ;


 size_t EBUSY ;
 struct led_classdev* dev_get_drvdata (struct device*) ;
 size_t kstrtoul (char const*,int,unsigned long*) ;
 struct led_classdev_flash* lcdev_to_flcdev (struct led_classdev*) ;
 size_t led_set_flash_timeout (struct led_classdev_flash*,unsigned long) ;
 scalar_t__ led_sysfs_is_disabled (struct led_classdev*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static ssize_t flash_timeout_store(struct device *dev,
  struct device_attribute *attr, const char *buf, size_t size)
{
 struct led_classdev *led_cdev = dev_get_drvdata(dev);
 struct led_classdev_flash *fled_cdev = lcdev_to_flcdev(led_cdev);
 unsigned long flash_timeout;
 ssize_t ret;

 mutex_lock(&led_cdev->led_access);

 if (led_sysfs_is_disabled(led_cdev)) {
  ret = -EBUSY;
  goto unlock;
 }

 ret = kstrtoul(buf, 10, &flash_timeout);
 if (ret)
  goto unlock;

 ret = led_set_flash_timeout(fled_cdev, flash_timeout);
 if (ret < 0)
  goto unlock;

 ret = size;
unlock:
 mutex_unlock(&led_cdev->led_access);
 return ret;
}
