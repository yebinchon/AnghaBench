
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sensor_device_attribute_2 {size_t nr; int index; } ;
struct pem_data {int* data_string; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 scalar_t__ IS_ERR (struct pem_data*) ;
 int PAGE_SIZE ;
 int PTR_ERR (struct pem_data*) ;
 struct pem_data* pem_update_device (struct device*) ;
 int snprintf (char*,int ,char*,int) ;
 struct sensor_device_attribute_2* to_sensor_dev_attr_2 (struct device_attribute*) ;

__attribute__((used)) static ssize_t pem_bool_show(struct device *dev, struct device_attribute *da,
        char *buf)
{
 struct sensor_device_attribute_2 *attr = to_sensor_dev_attr_2(da);
 struct pem_data *data = pem_update_device(dev);
 u8 status;

 if (IS_ERR(data))
  return PTR_ERR(data);

 status = data->data_string[attr->nr] & attr->index;
 return snprintf(buf, PAGE_SIZE, "%d\n", !!status);
}
