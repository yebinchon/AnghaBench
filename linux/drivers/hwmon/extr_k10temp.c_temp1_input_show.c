
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct k10temp_data {unsigned int temp_offset; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 struct k10temp_data* dev_get_drvdata (struct device*) ;
 unsigned int get_raw_temp (struct k10temp_data*) ;
 int sprintf (char*,char*,unsigned int) ;

__attribute__((used)) static ssize_t temp1_input_show(struct device *dev,
    struct device_attribute *attr, char *buf)
{
 struct k10temp_data *data = dev_get_drvdata(dev);
 unsigned int temp = get_raw_temp(data);

 if (temp > data->temp_offset)
  temp -= data->temp_offset;
 else
  temp = 0;

 return sprintf(buf, "%u\n", temp);
}
