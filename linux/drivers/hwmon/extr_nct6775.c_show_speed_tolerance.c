
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sensor_device_attribute {int index; } ;
struct nct6775_data {int* target_speed; int* target_speed_tolerance; int * fan_div; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int fan_from_reg16 (int,int ) ;
 struct nct6775_data* nct6775_update_device (struct device*) ;
 int sprintf (char*,char*,int) ;
 struct sensor_device_attribute* to_sensor_dev_attr (struct device_attribute*) ;

__attribute__((used)) static ssize_t
show_speed_tolerance(struct device *dev, struct device_attribute *attr,
       char *buf)
{
 struct nct6775_data *data = nct6775_update_device(dev);
 struct sensor_device_attribute *sattr = to_sensor_dev_attr(attr);
 int nr = sattr->index;
 int target = data->target_speed[nr];
 int tolerance = 0;

 if (target) {
  int low = target - data->target_speed_tolerance[nr];
  int high = target + data->target_speed_tolerance[nr];

  if (low <= 0)
   low = 1;
  if (high > 0xffff)
   high = 0xffff;
  if (high < low)
   high = low;

  tolerance = (fan_from_reg16(low, data->fan_div[nr])
        - fan_from_reg16(high, data->fan_div[nr])) / 2;
 }

 return sprintf(buf, "%d\n", tolerance);
}
