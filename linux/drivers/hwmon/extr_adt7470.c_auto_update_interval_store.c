
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct adt7470_data {long auto_update_interval; int lock; } ;
typedef size_t ssize_t ;


 size_t EINVAL ;
 long clamp_val (long,int ,int) ;
 struct adt7470_data* dev_get_drvdata (struct device*) ;
 scalar_t__ kstrtol (char const*,int,long*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static ssize_t auto_update_interval_store(struct device *dev,
       struct device_attribute *devattr,
       const char *buf, size_t count)
{
 struct adt7470_data *data = dev_get_drvdata(dev);
 long temp;

 if (kstrtol(buf, 10, &temp))
  return -EINVAL;

 temp = clamp_val(temp, 0, 60000);

 mutex_lock(&data->lock);
 data->auto_update_interval = temp;
 mutex_unlock(&data->lock);

 return count;
}
