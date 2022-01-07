
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ntc_data {int dummy; } ;
struct device {int dummy; } ;
typedef enum hwmon_sensor_types { ____Placeholder_hwmon_sensor_types } hwmon_sensor_types ;


 int EINVAL ;
 struct ntc_data* dev_get_drvdata (struct device*) ;
 long get_temp_mc (struct ntc_data*,int) ;



 int ntc_thermistor_get_ohm (struct ntc_data*) ;

__attribute__((used)) static int ntc_read(struct device *dev, enum hwmon_sensor_types type,
      u32 attr, int channel, long *val)
{
 struct ntc_data *data = dev_get_drvdata(dev);
 int ohm;

 switch (type) {
 case 130:
  switch (attr) {
  case 129:
   ohm = ntc_thermistor_get_ohm(data);
   if (ohm < 0)
    return ohm;
   *val = get_temp_mc(data, ohm);
   return 0;
  case 128:
   *val = 4;
   return 0;
  default:
   break;
  }
  break;
 default:
  break;
 }
 return -EINVAL;
}
