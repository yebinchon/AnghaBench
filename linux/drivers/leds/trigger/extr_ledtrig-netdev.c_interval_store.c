
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct led_netdev_data {int interval; int work; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int atomic_set (int *,int ) ;
 int cancel_delayed_work_sync (int *) ;
 int kstrtoul (char const*,int ,unsigned long*) ;
 struct led_netdev_data* led_trigger_get_drvdata (struct device*) ;
 int msecs_to_jiffies (unsigned long) ;
 int set_baseline_state (struct led_netdev_data*) ;

__attribute__((used)) static ssize_t interval_store(struct device *dev,
         struct device_attribute *attr, const char *buf,
         size_t size)
{
 struct led_netdev_data *trigger_data = led_trigger_get_drvdata(dev);
 unsigned long value;
 int ret;

 ret = kstrtoul(buf, 0, &value);
 if (ret)
  return ret;


 if (value >= 5 && value <= 10000) {
  cancel_delayed_work_sync(&trigger_data->work);

  atomic_set(&trigger_data->interval, msecs_to_jiffies(value));
  set_baseline_state(trigger_data);
 }

 return size;
}
