
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct gpiod_data {scalar_t__ irq_flags; int mutex; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
struct TYPE_3__ {scalar_t__ flags; char* name; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 struct gpiod_data* dev_get_drvdata (struct device*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int sprintf (char*,char*,char*) ;
 TYPE_1__* trigger_types ;

__attribute__((used)) static ssize_t edge_show(struct device *dev,
  struct device_attribute *attr, char *buf)
{
 struct gpiod_data *data = dev_get_drvdata(dev);
 ssize_t status = 0;
 int i;

 mutex_lock(&data->mutex);

 for (i = 0; i < ARRAY_SIZE(trigger_types); i++) {
  if (data->irq_flags == trigger_types[i].flags) {
   status = sprintf(buf, "%s\n", trigger_types[i].name);
   break;
  }
 }

 mutex_unlock(&data->mutex);

 return status;
}
