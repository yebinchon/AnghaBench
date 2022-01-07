
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wm831x_status {int src; int mutex; } ;
struct led_classdev {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef size_t ssize_t ;


 int ARRAY_SIZE (char**) ;
 struct led_classdev* dev_get_drvdata (struct device*) ;
 char** led_src_texts ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__ sprintf (char*,char*,...) ;
 struct wm831x_status* to_wm831x_status (struct led_classdev*) ;

__attribute__((used)) static ssize_t wm831x_status_src_show(struct device *dev,
          struct device_attribute *attr, char *buf)
{
 struct led_classdev *led_cdev = dev_get_drvdata(dev);
 struct wm831x_status *led = to_wm831x_status(led_cdev);
 int i;
 ssize_t ret = 0;

 mutex_lock(&led->mutex);

 for (i = 0; i < ARRAY_SIZE(led_src_texts); i++)
  if (i == led->src)
   ret += sprintf(&buf[ret], "[%s] ", led_src_texts[i]);
  else
   ret += sprintf(&buf[ret], "%s ", led_src_texts[i]);

 mutex_unlock(&led->mutex);

 ret += sprintf(&buf[ret], "\n");

 return ret;
}
