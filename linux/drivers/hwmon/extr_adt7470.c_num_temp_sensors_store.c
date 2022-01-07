
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct adt7470_data {long num_temp_sensors; int lock; scalar_t__ temperatures_probed; } ;
typedef size_t ssize_t ;


 size_t EINVAL ;
 long clamp_val (long,int,int) ;
 struct adt7470_data* dev_get_drvdata (struct device*) ;
 scalar_t__ kstrtol (char const*,int,long*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static ssize_t num_temp_sensors_store(struct device *dev,
          struct device_attribute *devattr,
          const char *buf, size_t count)
{
 struct adt7470_data *data = dev_get_drvdata(dev);
 long temp;

 if (kstrtol(buf, 10, &temp))
  return -EINVAL;

 temp = clamp_val(temp, -1, 10);

 mutex_lock(&data->lock);
 data->num_temp_sensors = temp;
 if (temp < 0)
  data->temperatures_probed = 0;
 mutex_unlock(&data->lock);

 return count;
}
