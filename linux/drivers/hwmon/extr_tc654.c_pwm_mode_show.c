
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tc654_data {int config; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 scalar_t__ IS_ERR (struct tc654_data*) ;
 int PTR_ERR (struct tc654_data*) ;
 int TC654_REG_CONFIG_DUTYC ;
 int sprintf (char*,char*,int) ;
 struct tc654_data* tc654_update_client (struct device*) ;

__attribute__((used)) static ssize_t pwm_mode_show(struct device *dev, struct device_attribute *da,
        char *buf)
{
 struct tc654_data *data = tc654_update_client(dev);

 if (IS_ERR(data))
  return PTR_ERR(data);

 return sprintf(buf, "%d\n", !!(data->config & TC654_REG_CONFIG_DUTYC));
}
