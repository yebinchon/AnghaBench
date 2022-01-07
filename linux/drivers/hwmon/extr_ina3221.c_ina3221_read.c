
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ina3221_data {int lock; } ;
struct device {int dummy; } ;
typedef enum hwmon_sensor_types { ____Placeholder_hwmon_sensor_types } hwmon_sensor_types ;


 int EOPNOTSUPP ;
 struct ina3221_data* dev_get_drvdata (struct device*) ;



 int ina3221_read_chip (struct device*,int ,long*) ;
 int ina3221_read_curr (struct device*,int ,int,long*) ;
 int ina3221_read_in (struct device*,int ,int,long*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int ina3221_read(struct device *dev, enum hwmon_sensor_types type,
   u32 attr, int channel, long *val)
{
 struct ina3221_data *ina = dev_get_drvdata(dev);
 int ret;

 mutex_lock(&ina->lock);

 switch (type) {
 case 130:
  ret = ina3221_read_chip(dev, attr, val);
  break;
 case 128:

  ret = ina3221_read_in(dev, attr, channel - 1, val);
  break;
 case 129:
  ret = ina3221_read_curr(dev, attr, channel, val);
  break;
 default:
  ret = -EOPNOTSUPP;
  break;
 }

 mutex_unlock(&ina->lock);

 return ret;
}
