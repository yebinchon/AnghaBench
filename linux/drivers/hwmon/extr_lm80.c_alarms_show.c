
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lm80_data {int alarms; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 scalar_t__ IS_ERR (struct lm80_data*) ;
 int PTR_ERR (struct lm80_data*) ;
 struct lm80_data* lm80_update_device (struct device*) ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static ssize_t alarms_show(struct device *dev, struct device_attribute *attr,
      char *buf)
{
 struct lm80_data *data = lm80_update_device(dev);
 if (IS_ERR(data))
  return PTR_ERR(data);
 return sprintf(buf, "%u\n", data->alarms);
}
