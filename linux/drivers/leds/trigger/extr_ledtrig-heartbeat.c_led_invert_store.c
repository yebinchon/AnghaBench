
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct heartbeat_trig_data {int invert; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int kstrtoul (char const*,int ,unsigned long*) ;
 struct heartbeat_trig_data* led_trigger_get_drvdata (struct device*) ;

__attribute__((used)) static ssize_t led_invert_store(struct device *dev,
  struct device_attribute *attr, const char *buf, size_t size)
{
 struct heartbeat_trig_data *heartbeat_data =
  led_trigger_get_drvdata(dev);
 unsigned long state;
 int ret;

 ret = kstrtoul(buf, 0, &state);
 if (ret)
  return ret;

 heartbeat_data->invert = !!state;

 return size;
}
