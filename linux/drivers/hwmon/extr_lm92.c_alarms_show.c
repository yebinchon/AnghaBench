
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lm92_data {int * temp; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int ALARMS_FROM_REG (int ) ;
 struct lm92_data* lm92_update_device (struct device*) ;
 int sprintf (char*,char*,int) ;
 size_t t_input ;

__attribute__((used)) static ssize_t alarms_show(struct device *dev, struct device_attribute *attr,
      char *buf)
{
 struct lm92_data *data = lm92_update_device(dev);

 return sprintf(buf, "%d\n", ALARMS_FROM_REG(data->temp[t_input]));
}
