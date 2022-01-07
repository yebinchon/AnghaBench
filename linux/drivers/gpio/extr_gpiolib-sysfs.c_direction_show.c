
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpiod_data {int mutex; struct gpio_desc* desc; } ;
struct gpio_desc {int flags; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int FLAG_IS_OUT ;
 struct gpiod_data* dev_get_drvdata (struct device*) ;
 int gpiod_get_direction (struct gpio_desc*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int sprintf (char*,char*,char*) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static ssize_t direction_show(struct device *dev,
  struct device_attribute *attr, char *buf)
{
 struct gpiod_data *data = dev_get_drvdata(dev);
 struct gpio_desc *desc = data->desc;
 ssize_t status;

 mutex_lock(&data->mutex);

 gpiod_get_direction(desc);
 status = sprintf(buf, "%s\n",
   test_bit(FLAG_IS_OUT, &desc->flags)
    ? "out" : "in");

 mutex_unlock(&data->mutex);

 return status;
}
