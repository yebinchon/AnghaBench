
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tc654_data {int status; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
struct TYPE_2__ {int index; } ;


 scalar_t__ IS_ERR (struct tc654_data*) ;
 int PTR_ERR (struct tc654_data*) ;
 int TC654_REG_STATUS_F1F ;
 int TC654_REG_STATUS_F2F ;
 int sprintf (char*,char*,int) ;
 struct tc654_data* tc654_update_client (struct device*) ;
 TYPE_1__* to_sensor_dev_attr (struct device_attribute*) ;

__attribute__((used)) static ssize_t fan_alarm_show(struct device *dev, struct device_attribute *da,
         char *buf)
{
 int nr = to_sensor_dev_attr(da)->index;
 struct tc654_data *data = tc654_update_client(dev);
 int val;

 if (IS_ERR(data))
  return PTR_ERR(data);

 if (nr == 0)
  val = !!(data->status & TC654_REG_STATUS_F1F);
 else
  val = !!(data->status & TC654_REG_STATUS_F2F);

 return sprintf(buf, "%d\n", val);
}
