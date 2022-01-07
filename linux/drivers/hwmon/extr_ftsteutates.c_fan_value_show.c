
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct fts_data {int* fan_input; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
struct TYPE_2__ {int index; } ;


 struct fts_data* dev_get_drvdata (struct device*) ;
 int fts_update_device (struct fts_data*) ;
 int sprintf (char*,char*,int) ;
 TYPE_1__* to_sensor_dev_attr (struct device_attribute*) ;

__attribute__((used)) static ssize_t fan_value_show(struct device *dev,
         struct device_attribute *devattr, char *buf)
{
 struct fts_data *data = dev_get_drvdata(dev);
 int index = to_sensor_dev_attr(devattr)->index;
 int err;

 err = fts_update_device(data);
 if (err < 0)
  return err;

 return sprintf(buf, "%u\n", data->fan_input[index]);
}
