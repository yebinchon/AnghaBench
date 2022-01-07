
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sensor_device_attribute {int index; } ;
struct max197_data {int lock; scalar_t__ scale; int * ctrl_bytes; TYPE_1__* pdata; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
typedef int s32 ;
struct TYPE_2__ {int (* convert ) (int ) ;} ;


 int ERESTARTSYS ;
 int MAX197_SCALE ;
 int dev_err (struct device*,char*) ;
 struct max197_data* dev_get_drvdata (struct device*) ;
 scalar_t__ max197_is_full_range (struct max197_data*,int) ;
 scalar_t__ mutex_lock_interruptible (int *) ;
 int mutex_unlock (int *) ;
 int sprintf (char*,char*,int) ;
 int stub1 (int ) ;
 struct sensor_device_attribute* to_sensor_dev_attr (struct device_attribute*) ;

__attribute__((used)) static ssize_t max197_show_input(struct device *dev,
     struct device_attribute *devattr,
     char *buf)
{
 struct max197_data *data = dev_get_drvdata(dev);
 struct sensor_device_attribute *attr = to_sensor_dev_attr(devattr);
 int channel = attr->index;
 s32 value;
 int ret;

 if (mutex_lock_interruptible(&data->lock))
  return -ERESTARTSYS;

 ret = data->pdata->convert(data->ctrl_bytes[channel]);
 if (ret < 0) {
  dev_err(dev, "conversion failed\n");
  goto unlock;
 }
 value = ret;





 if (data->scale) {
  value *= MAX197_SCALE;
  if (max197_is_full_range(data, channel))
   value *= 2;
  value /= 10000;
 }

 ret = sprintf(buf, "%d\n", value);

unlock:
 mutex_unlock(&data->lock);
 return ret;
}
