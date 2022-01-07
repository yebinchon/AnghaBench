
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wm831x_status {int src; int mutex; } ;
struct led_classdev {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef size_t ssize_t ;


 struct led_classdev* dev_get_drvdata (struct device*) ;
 int led_src_texts ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int sysfs_match_string (int ,char const*) ;
 struct wm831x_status* to_wm831x_status (struct led_classdev*) ;
 int wm831x_status_set (struct wm831x_status*) ;

__attribute__((used)) static ssize_t wm831x_status_src_store(struct device *dev,
           struct device_attribute *attr,
           const char *buf, size_t size)
{
 struct led_classdev *led_cdev = dev_get_drvdata(dev);
 struct wm831x_status *led = to_wm831x_status(led_cdev);
 int i;

 i = sysfs_match_string(led_src_texts, buf);
 if (i >= 0) {
  mutex_lock(&led->mutex);
  led->src = i;
  mutex_unlock(&led->mutex);
  wm831x_status_set(led);
 }

 return size;
}
