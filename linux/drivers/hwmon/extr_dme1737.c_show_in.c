
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sensor_device_attribute_2 {int index; int nr; } ;
struct dme1737_data {int alarms; int * in_nominal; int * in_max; int * in_min; int * in; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int* DME1737_BIT_ALARM_IN ;
 int IN_FROM_REG (int ,int ,int) ;




 int dev_dbg (struct device*,char*,int) ;
 struct dme1737_data* dme1737_update_device (struct device*) ;
 int sprintf (char*,char*,int) ;
 struct sensor_device_attribute_2* to_sensor_dev_attr_2 (struct device_attribute*) ;

__attribute__((used)) static ssize_t show_in(struct device *dev, struct device_attribute *attr,
         char *buf)
{
 struct dme1737_data *data = dme1737_update_device(dev);
 struct sensor_device_attribute_2
  *sensor_attr_2 = to_sensor_dev_attr_2(attr);
 int ix = sensor_attr_2->index;
 int fn = sensor_attr_2->nr;
 int res;

 switch (fn) {
 case 130:
  res = IN_FROM_REG(data->in[ix], data->in_nominal[ix], 16);
  break;
 case 128:
  res = IN_FROM_REG(data->in_min[ix], data->in_nominal[ix], 8);
  break;
 case 129:
  res = IN_FROM_REG(data->in_max[ix], data->in_nominal[ix], 8);
  break;
 case 131:
  res = (data->alarms >> DME1737_BIT_ALARM_IN[ix]) & 0x01;
  break;
 default:
  res = 0;
  dev_dbg(dev, "Unknown function %d.\n", fn);
 }

 return sprintf(buf, "%d\n", res);
}
