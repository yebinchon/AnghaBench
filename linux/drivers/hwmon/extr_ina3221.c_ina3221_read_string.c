
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct ina3221_data {TYPE_1__* inputs; } ;
struct device {int dummy; } ;
typedef enum hwmon_sensor_types { ____Placeholder_hwmon_sensor_types } hwmon_sensor_types ;
struct TYPE_2__ {char* label; } ;


 struct ina3221_data* dev_get_drvdata (struct device*) ;

__attribute__((used)) static int ina3221_read_string(struct device *dev, enum hwmon_sensor_types type,
          u32 attr, int channel, const char **str)
{
 struct ina3221_data *ina = dev_get_drvdata(dev);
 int index = channel - 1;

 *str = ina->inputs[index].label;

 return 0;
}
