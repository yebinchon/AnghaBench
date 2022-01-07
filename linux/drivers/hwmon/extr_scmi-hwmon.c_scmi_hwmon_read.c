
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef long u64 ;
typedef int u32 ;
struct scmi_sensors {struct scmi_sensor_info*** info; struct scmi_handle* handle; } ;
struct scmi_sensor_info {int id; } ;
struct scmi_handle {TYPE_1__* sensor_ops; } ;
struct device {int dummy; } ;
typedef enum hwmon_sensor_types { ____Placeholder_hwmon_sensor_types } hwmon_sensor_types ;
struct TYPE_2__ {int (* reading_get ) (struct scmi_handle const*,int ,long*) ;} ;


 struct scmi_sensors* dev_get_drvdata (struct device*) ;
 int scmi_hwmon_scale (struct scmi_sensor_info const*,long*) ;
 int stub1 (struct scmi_handle const*,int ,long*) ;

__attribute__((used)) static int scmi_hwmon_read(struct device *dev, enum hwmon_sensor_types type,
      u32 attr, int channel, long *val)
{
 int ret;
 u64 value;
 const struct scmi_sensor_info *sensor;
 struct scmi_sensors *scmi_sensors = dev_get_drvdata(dev);
 const struct scmi_handle *h = scmi_sensors->handle;

 sensor = *(scmi_sensors->info[type] + channel);
 ret = h->sensor_ops->reading_get(h, sensor->id, &value);
 if (ret)
  return ret;

 ret = scmi_hwmon_scale(sensor, &value);
 if (!ret)
  *val = value;

 return ret;
}
