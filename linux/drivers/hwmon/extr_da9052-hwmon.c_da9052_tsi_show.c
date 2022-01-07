
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct da9052_hwmon {int hwmon_lock; } ;
typedef int ssize_t ;
struct TYPE_2__ {int index; } ;


 int __da9052_read_tsi (struct device*,int) ;
 struct da9052_hwmon* dev_get_drvdata (struct device*) ;
 int input_tsireg_to_mv (struct da9052_hwmon*,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int sprintf (char*,char*,int) ;
 TYPE_1__* to_sensor_dev_attr (struct device_attribute*) ;

__attribute__((used)) static ssize_t da9052_tsi_show(struct device *dev,
          struct device_attribute *devattr, char *buf)
{
 struct da9052_hwmon *hwmon = dev_get_drvdata(dev);
 int channel = to_sensor_dev_attr(devattr)->index;
 int ret;

 mutex_lock(&hwmon->hwmon_lock);
 ret = __da9052_read_tsi(dev, channel);
 mutex_unlock(&hwmon->hwmon_lock);

 if (ret < 0)
  return ret;
 else
  return sprintf(buf, "%d\n", input_tsireg_to_mv(hwmon, ret));
}
