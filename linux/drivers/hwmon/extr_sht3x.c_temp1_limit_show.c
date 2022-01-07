
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u8 ;
struct sht3x_data {int* temperature_limits; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
struct TYPE_2__ {size_t index; } ;


 int PAGE_SIZE ;
 struct sht3x_data* dev_get_drvdata (struct device*) ;
 int scnprintf (char*,int ,char*,int) ;
 TYPE_1__* to_sensor_dev_attr (struct device_attribute*) ;

__attribute__((used)) static ssize_t temp1_limit_show(struct device *dev,
    struct device_attribute *attr,
    char *buf)
{
 struct sht3x_data *data = dev_get_drvdata(dev);
 u8 index = to_sensor_dev_attr(attr)->index;
 int temperature_limit = data->temperature_limits[index];

 return scnprintf(buf, PAGE_SIZE, "%d\n", temperature_limit);
}
