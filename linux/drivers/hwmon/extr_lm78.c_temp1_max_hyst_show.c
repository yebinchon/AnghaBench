
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lm78_data {int temp_hyst; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int TEMP_FROM_REG (int ) ;
 struct lm78_data* lm78_update_device (struct device*) ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static ssize_t temp1_max_hyst_show(struct device *dev,
       struct device_attribute *da, char *buf)
{
 struct lm78_data *data = lm78_update_device(dev);
 return sprintf(buf, "%d\n", TEMP_FROM_REG(data->temp_hyst));
}
