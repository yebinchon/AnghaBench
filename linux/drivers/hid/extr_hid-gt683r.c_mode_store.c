
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct hid_device {int dummy; } ;
struct gt683r_led {int work; int lock; int mode; } ;
struct device_attribute {int dummy; } ;
struct device {int parent; } ;
typedef size_t ssize_t ;


 size_t EINVAL ;
 int GT683R_LED_AUDIO ;
 int GT683R_LED_BREATHING ;
 int GT683R_LED_NORMAL ;
 struct gt683r_led* hid_get_drvdata (struct hid_device*) ;
 scalar_t__ kstrtou8 (char const*,int,int*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int schedule_work (int *) ;
 struct hid_device* to_hid_device (int ) ;

__attribute__((used)) static ssize_t mode_store(struct device *dev,
    struct device_attribute *attr,
    const char *buf, size_t count)
{
 u8 sysfs_mode;
 struct hid_device *hdev = to_hid_device(dev->parent);
 struct gt683r_led *led = hid_get_drvdata(hdev);


 if (kstrtou8(buf, 10, &sysfs_mode) || sysfs_mode > 2)
  return -EINVAL;

 mutex_lock(&led->lock);

 if (sysfs_mode == 0)
  led->mode = GT683R_LED_NORMAL;
 else if (sysfs_mode == 1)
  led->mode = GT683R_LED_AUDIO;
 else
  led->mode = GT683R_LED_BREATHING;

 mutex_unlock(&led->lock);
 schedule_work(&led->work);

 return count;
}
