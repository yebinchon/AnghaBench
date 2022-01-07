
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sensor_device_attribute_2 {int index; int nr; } ;
struct dme1737_data {int config2; int * zone_abs; int * pwm_freq; int * zone_low; int * zone_hyst; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;







 int TEMP_FROM_REG (int ,int) ;
 int TEMP_HYST_FROM_REG (int ,int) ;
 int TEMP_RANGE_FROM_REG (int ) ;
 int dev_dbg (struct device*,char*,int) ;
 struct dme1737_data* dme1737_update_device (struct device*) ;
 int sprintf (char*,char*,int) ;
 struct sensor_device_attribute_2* to_sensor_dev_attr_2 (struct device_attribute*) ;

__attribute__((used)) static ssize_t show_zone(struct device *dev, struct device_attribute *attr,
    char *buf)
{
 struct dme1737_data *data = dme1737_update_device(dev);
 struct sensor_device_attribute_2
  *sensor_attr_2 = to_sensor_dev_attr_2(attr);
 int ix = sensor_attr_2->index;
 int fn = sensor_attr_2->nr;
 int res;

 switch (fn) {
 case 132:

  if ((ix == 1) && (data->config2 & 0x02))
   res = 4;
  else
   res = 1 << ix;
  break;
 case 130:
  res = TEMP_FROM_REG(data->zone_low[ix], 8) -
        TEMP_HYST_FROM_REG(data->zone_hyst[ix == 2], ix);
  break;
 case 131:
  res = TEMP_FROM_REG(data->zone_low[ix], 8);
  break;
 case 129:

  res = TEMP_FROM_REG(data->zone_low[ix], 8) +
        TEMP_RANGE_FROM_REG(data->pwm_freq[ix]);
  break;
 case 128:
  res = TEMP_FROM_REG(data->zone_abs[ix], 8);
  break;
 default:
  res = 0;
  dev_dbg(dev, "Unknown function %d.\n", fn);
 }

 return sprintf(buf, "%d\n", res);
}
