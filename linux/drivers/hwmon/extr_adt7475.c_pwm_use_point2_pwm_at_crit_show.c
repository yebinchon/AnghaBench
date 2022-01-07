
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct adt7475_data {int config4; } ;
typedef int ssize_t ;


 int CONFIG4_MAXDUTY ;
 scalar_t__ IS_ERR (struct adt7475_data*) ;
 int PTR_ERR (struct adt7475_data*) ;
 struct adt7475_data* adt7475_update_device (struct device*) ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static ssize_t pwm_use_point2_pwm_at_crit_show(struct device *dev,
     struct device_attribute *devattr,
     char *buf)
{
 struct adt7475_data *data = adt7475_update_device(dev);

 if (IS_ERR(data))
  return PTR_ERR(data);

 return sprintf(buf, "%d\n", !!(data->config4 & CONFIG4_MAXDUTY));
}
