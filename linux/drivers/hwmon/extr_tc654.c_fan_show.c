
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tc654_data {int config; int* rpm_output; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
struct TYPE_2__ {int index; } ;


 scalar_t__ IS_ERR (struct tc654_data*) ;
 int PTR_ERR (struct tc654_data*) ;
 int TC654_HIGH_RPM_RESOLUTION ;
 int TC654_LOW_RPM_RESOLUTION ;
 int TC654_REG_CONFIG_RES ;
 int sprintf (char*,char*,int) ;
 struct tc654_data* tc654_update_client (struct device*) ;
 TYPE_1__* to_sensor_dev_attr (struct device_attribute*) ;

__attribute__((used)) static ssize_t fan_show(struct device *dev, struct device_attribute *da,
   char *buf)
{
 int nr = to_sensor_dev_attr(da)->index;
 struct tc654_data *data = tc654_update_client(dev);
 int val;

 if (IS_ERR(data))
  return PTR_ERR(data);

 if (data->config & TC654_REG_CONFIG_RES)
  val = data->rpm_output[nr] * TC654_HIGH_RPM_RESOLUTION;
 else
  val = data->rpm_output[nr] * TC654_LOW_RPM_RESOLUTION;

 return sprintf(buf, "%d\n", val);
}
