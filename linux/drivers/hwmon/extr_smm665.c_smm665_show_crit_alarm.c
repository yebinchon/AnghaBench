
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smm665_data {int faults; } ;
struct sensor_device_attribute {int index; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 scalar_t__ IS_ERR (struct smm665_data*) ;
 int PAGE_SIZE ;
 int PTR_ERR (struct smm665_data*) ;
 struct smm665_data* smm665_update_device (struct device*) ;
 int snprintf (char*,int ,char*,int) ;
 struct sensor_device_attribute* to_sensor_dev_attr (struct device_attribute*) ;

__attribute__((used)) static ssize_t smm665_show_crit_alarm(struct device *dev,
          struct device_attribute *da, char *buf)
{
 struct sensor_device_attribute *attr = to_sensor_dev_attr(da);
 struct smm665_data *data = smm665_update_device(dev);
 int val = 0;

 if (IS_ERR(data))
  return PTR_ERR(data);

 if (data->faults & (1 << attr->index))
  val = 1;

 return snprintf(buf, PAGE_SIZE, "%d\n", val);
}
