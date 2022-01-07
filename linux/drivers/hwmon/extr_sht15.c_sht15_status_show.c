
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct sht15_data {int val_status; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
struct TYPE_2__ {int index; } ;


 struct sht15_data* dev_get_drvdata (struct device*) ;
 int sht15_update_status (struct sht15_data*) ;
 int sprintf (char*,char*,int) ;
 TYPE_1__* to_sensor_dev_attr (struct device_attribute*) ;

__attribute__((used)) static ssize_t sht15_status_show(struct device *dev,
     struct device_attribute *attr, char *buf)
{
 int ret;
 struct sht15_data *data = dev_get_drvdata(dev);
 u8 bit = to_sensor_dev_attr(attr)->index;

 ret = sht15_update_status(data);

 return ret ? ret : sprintf(buf, "%d\n", !!(data->val_status & bit));
}
