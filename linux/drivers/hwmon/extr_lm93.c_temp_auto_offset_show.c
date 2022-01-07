
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sensor_device_attribute_2 {int index; int nr; } ;
struct TYPE_2__ {int * offset; } ;
struct lm93_data {TYPE_1__ block10; int sfc2; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int LM93_TEMP_AUTO_OFFSET_FROM_REG (int ,int,int) ;
 int LM93_TEMP_OFFSET_MODE_FROM_REG (int ,int) ;
 struct lm93_data* lm93_update_device (struct device*) ;
 int sprintf (char*,char*,int) ;
 struct sensor_device_attribute_2* to_sensor_dev_attr_2 (struct device_attribute*) ;

__attribute__((used)) static ssize_t temp_auto_offset_show(struct device *dev,
         struct device_attribute *attr, char *buf)
{
 struct sensor_device_attribute_2 *s_attr = to_sensor_dev_attr_2(attr);
 int nr = s_attr->index;
 int ofs = s_attr->nr;
 struct lm93_data *data = lm93_update_device(dev);
 int mode = LM93_TEMP_OFFSET_MODE_FROM_REG(data->sfc2, nr);
 return sprintf(buf, "%d\n",
        LM93_TEMP_AUTO_OFFSET_FROM_REG(data->block10.offset[ofs],
           nr, mode));
}
