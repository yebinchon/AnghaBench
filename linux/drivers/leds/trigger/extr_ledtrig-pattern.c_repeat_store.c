
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pattern_trig_data {int last_repeat; int repeat; int is_indefinite; int lock; scalar_t__ is_hw_pattern; int timer; } ;
struct led_classdev {int (* pattern_clear ) (struct led_classdev*) ;struct pattern_trig_data* trigger_data; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int EINVAL ;
 int del_timer_sync (int *) ;
 struct led_classdev* dev_get_drvdata (struct device*) ;
 int kstrtos32 (char const*,int,int*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pattern_trig_start_pattern (struct led_classdev*) ;
 int stub1 (struct led_classdev*) ;

__attribute__((used)) static ssize_t repeat_store(struct device *dev, struct device_attribute *attr,
       const char *buf, size_t count)
{
 struct led_classdev *led_cdev = dev_get_drvdata(dev);
 struct pattern_trig_data *data = led_cdev->trigger_data;
 int err, res;

 err = kstrtos32(buf, 10, &res);
 if (err)
  return err;


 if (res < -1 || res == 0)
  return -EINVAL;

 mutex_lock(&data->lock);

 del_timer_sync(&data->timer);

 if (data->is_hw_pattern)
  led_cdev->pattern_clear(led_cdev);

 data->last_repeat = data->repeat = res;

 if (data->repeat == -1)
  data->is_indefinite = 1;
 else
  data->is_indefinite = 0;

 err = pattern_trig_start_pattern(led_cdev);

 mutex_unlock(&data->lock);
 return err < 0 ? err : count;
}
