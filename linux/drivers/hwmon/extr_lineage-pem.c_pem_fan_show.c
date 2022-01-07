
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sensor_device_attribute {int index; } ;
struct pem_data {int fan_speed; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 scalar_t__ IS_ERR (struct pem_data*) ;
 int PAGE_SIZE ;
 int PTR_ERR (struct pem_data*) ;
 long pem_get_fan (int ,int,int ) ;
 struct pem_data* pem_update_device (struct device*) ;
 int snprintf (char*,int ,char*,long) ;
 struct sensor_device_attribute* to_sensor_dev_attr (struct device_attribute*) ;

__attribute__((used)) static ssize_t pem_fan_show(struct device *dev, struct device_attribute *da,
       char *buf)
{
 struct sensor_device_attribute *attr = to_sensor_dev_attr(da);
 struct pem_data *data = pem_update_device(dev);
 long value;

 if (IS_ERR(data))
  return PTR_ERR(data);

 value = pem_get_fan(data->fan_speed, sizeof(data->fan_speed),
       attr->index);

 return snprintf(buf, PAGE_SIZE, "%ld\n", value);
}
