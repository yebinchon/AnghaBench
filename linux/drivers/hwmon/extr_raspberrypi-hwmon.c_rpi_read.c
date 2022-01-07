
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rpi_hwmon_data {int last_throttled; } ;
struct device {int dummy; } ;
typedef enum hwmon_sensor_types { ____Placeholder_hwmon_sensor_types } hwmon_sensor_types ;


 int UNDERVOLTAGE_STICKY_BIT ;
 struct rpi_hwmon_data* dev_get_drvdata (struct device*) ;

__attribute__((used)) static int rpi_read(struct device *dev, enum hwmon_sensor_types type,
      u32 attr, int channel, long *val)
{
 struct rpi_hwmon_data *data = dev_get_drvdata(dev);

 *val = !!(data->last_throttled & UNDERVOLTAGE_STICKY_BIT);
 return 0;
}
