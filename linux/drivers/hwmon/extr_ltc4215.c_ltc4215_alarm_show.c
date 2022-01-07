
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct sensor_device_attribute {int index; } ;
struct ltc4215_data {int* regs; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 size_t LTC4215_STATUS ;
 int PAGE_SIZE ;
 struct ltc4215_data* ltc4215_update_device (struct device*) ;
 int snprintf (char*,int ,char*,int) ;
 struct sensor_device_attribute* to_sensor_dev_attr (struct device_attribute*) ;

__attribute__((used)) static ssize_t ltc4215_alarm_show(struct device *dev,
      struct device_attribute *da, char *buf)
{
 struct sensor_device_attribute *attr = to_sensor_dev_attr(da);
 struct ltc4215_data *data = ltc4215_update_device(dev);
 const u8 reg = data->regs[LTC4215_STATUS];
 const u32 mask = attr->index;

 return snprintf(buf, PAGE_SIZE, "%u\n", !!(reg & mask));
}
