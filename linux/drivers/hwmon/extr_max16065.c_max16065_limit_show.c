
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sensor_device_attribute_2 {size_t nr; size_t index; } ;
struct max16065_data {int** limit; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int PAGE_SIZE ;
 struct max16065_data* dev_get_drvdata (struct device*) ;
 int snprintf (char*,int ,char*,int) ;
 struct sensor_device_attribute_2* to_sensor_dev_attr_2 (struct device_attribute*) ;

__attribute__((used)) static ssize_t max16065_limit_show(struct device *dev,
       struct device_attribute *da, char *buf)
{
 struct sensor_device_attribute_2 *attr2 = to_sensor_dev_attr_2(da);
 struct max16065_data *data = dev_get_drvdata(dev);

 return snprintf(buf, PAGE_SIZE, "%d\n",
   data->limit[attr2->nr][attr2->index]);
}
