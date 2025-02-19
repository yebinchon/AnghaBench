
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sensor_device_attribute {int index; } ;
struct lm77_data {int* temp; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 struct lm77_data* lm77_update_device (struct device*) ;
 int sprintf (char*,char*,int) ;
 size_t t_hyst ;
 int t_min ;
 struct sensor_device_attribute* to_sensor_dev_attr (struct device_attribute*) ;

__attribute__((used)) static ssize_t temp_hyst_show(struct device *dev,
         struct device_attribute *devattr, char *buf)
{
 struct sensor_device_attribute *attr = to_sensor_dev_attr(devattr);
 struct lm77_data *data = lm77_update_device(dev);
 int nr = attr->index;
 int temp;

 temp = nr == t_min ? data->temp[nr] + data->temp[t_hyst] :
        data->temp[nr] - data->temp[t_hyst];

 return sprintf(buf, "%d\n", temp);
}
