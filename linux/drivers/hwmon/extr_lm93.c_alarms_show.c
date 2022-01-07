
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lm93_data {int block1; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int LM93_ALARMS_FROM_REG (int ) ;
 struct lm93_data* lm93_update_device (struct device*) ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static ssize_t alarms_show(struct device *dev, struct device_attribute *attr,
    char *buf)
{
 struct lm93_data *data = lm93_update_device(dev);
 return sprintf(buf, "%d\n", LM93_ALARMS_FROM_REG(data->block1));
}
