
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct lm93_data {int sfc2; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
struct TYPE_2__ {int index; } ;


 int LM93_AUTO_BOOST_HYST_FROM_REGS (struct lm93_data*,int,int) ;
 int LM93_TEMP_OFFSET_MODE_FROM_REG (int ,int) ;
 struct lm93_data* lm93_update_device (struct device*) ;
 int sprintf (char*,char*,int) ;
 TYPE_1__* to_sensor_dev_attr (struct device_attribute*) ;

__attribute__((used)) static ssize_t temp_auto_boost_hyst_show(struct device *dev,
      struct device_attribute *attr,
      char *buf)
{
 int nr = (to_sensor_dev_attr(attr))->index;
 struct lm93_data *data = lm93_update_device(dev);
 int mode = LM93_TEMP_OFFSET_MODE_FROM_REG(data->sfc2, nr);
 return sprintf(buf, "%d\n",
         LM93_AUTO_BOOST_HYST_FROM_REGS(data, nr, mode));
}
