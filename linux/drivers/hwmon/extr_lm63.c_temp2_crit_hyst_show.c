
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lm63_data {int temp2_offset; int temp2_crit_hyst; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int TEMP8_FROM_REG (int ) ;
 struct lm63_data* lm63_update_device (struct device*) ;
 int sprintf (char*,char*,int) ;
 int temp8_from_reg (struct lm63_data*,int) ;

__attribute__((used)) static ssize_t temp2_crit_hyst_show(struct device *dev,
        struct device_attribute *dummy, char *buf)
{
 struct lm63_data *data = lm63_update_device(dev);
 return sprintf(buf, "%d\n", temp8_from_reg(data, 2)
         + data->temp2_offset
         - TEMP8_FROM_REG(data->temp2_crit_hyst));
}
