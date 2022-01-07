
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sensor_device_attribute_2 {int index; int nr; } ;
struct dme1737_data {int alarms; int * fan_opt; int * fan_max; int * fan_min; int * fan; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int* DME1737_BIT_ALARM_FAN ;
 int FAN_FROM_REG (int ,int ) ;
 int FAN_MAX_FROM_REG (int ) ;
 int FAN_TPC_FROM_REG (int ) ;
 int FAN_TYPE_FROM_REG (int ) ;





 int dev_dbg (struct device*,char*,int) ;
 struct dme1737_data* dme1737_update_device (struct device*) ;
 int sprintf (char*,char*,int) ;
 struct sensor_device_attribute_2* to_sensor_dev_attr_2 (struct device_attribute*) ;

__attribute__((used)) static ssize_t show_fan(struct device *dev, struct device_attribute *attr,
   char *buf)
{
 struct dme1737_data *data = dme1737_update_device(dev);
 struct sensor_device_attribute_2
  *sensor_attr_2 = to_sensor_dev_attr_2(attr);
 int ix = sensor_attr_2->index;
 int fn = sensor_attr_2->nr;
 int res;

 switch (fn) {
 case 131:
  res = FAN_FROM_REG(data->fan[ix],
       ix < 4 ? 0 :
       FAN_TPC_FROM_REG(data->fan_opt[ix]));
  break;
 case 129:
  res = FAN_FROM_REG(data->fan_min[ix],
       ix < 4 ? 0 :
       FAN_TPC_FROM_REG(data->fan_opt[ix]));
  break;
 case 130:

  res = FAN_MAX_FROM_REG(data->fan_max[ix - 4]);
  break;
 case 132:
  res = (data->alarms >> DME1737_BIT_ALARM_FAN[ix]) & 0x01;
  break;
 case 128:

  res = FAN_TYPE_FROM_REG(data->fan_opt[ix]);
  break;
 default:
  res = 0;
  dev_dbg(dev, "Unknown function %d.\n", fn);
 }

 return sprintf(buf, "%d\n", res);
}
