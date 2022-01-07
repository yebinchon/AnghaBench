
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pattern_trig_data {int last_repeat; int lock; } ;
struct led_classdev {struct pattern_trig_data* trigger_data; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int PAGE_SIZE ;
 struct led_classdev* dev_get_drvdata (struct device*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int scnprintf (char*,int ,char*,int) ;

__attribute__((used)) static ssize_t repeat_show(struct device *dev, struct device_attribute *attr,
      char *buf)
{
 struct led_classdev *led_cdev = dev_get_drvdata(dev);
 struct pattern_trig_data *data = led_cdev->trigger_data;
 int repeat;

 mutex_lock(&data->lock);

 repeat = data->last_repeat;

 mutex_unlock(&data->lock);

 return scnprintf(buf, PAGE_SIZE, "%d\n", repeat);
}
