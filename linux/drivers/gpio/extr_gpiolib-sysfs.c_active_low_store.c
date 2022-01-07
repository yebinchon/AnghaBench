
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpiod_data {int mutex; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef scalar_t__ ssize_t ;


 struct gpiod_data* dev_get_drvdata (struct device*) ;
 scalar_t__ gpio_sysfs_set_active_low (struct device*,long) ;
 scalar_t__ kstrtol (char const*,int ,long*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static ssize_t active_low_store(struct device *dev,
  struct device_attribute *attr, const char *buf, size_t size)
{
 struct gpiod_data *data = dev_get_drvdata(dev);
 ssize_t status;
 long value;

 mutex_lock(&data->mutex);

 status = kstrtol(buf, 0, &value);
 if (status == 0)
  status = gpio_sysfs_set_active_low(dev, value);

 mutex_unlock(&data->mutex);

 return status ? : size;
}
