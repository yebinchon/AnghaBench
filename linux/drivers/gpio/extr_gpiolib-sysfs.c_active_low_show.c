
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpiod_data {int mutex; struct gpio_desc* desc; } ;
struct gpio_desc {int flags; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int FLAG_ACTIVE_LOW ;
 struct gpiod_data* dev_get_drvdata (struct device*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int sprintf (char*,char*,int) ;
 int test_bit (int ,int *) ;

__attribute__((used)) static ssize_t active_low_show(struct device *dev,
  struct device_attribute *attr, char *buf)
{
 struct gpiod_data *data = dev_get_drvdata(dev);
 struct gpio_desc *desc = data->desc;
 ssize_t status;

 mutex_lock(&data->mutex);

 status = sprintf(buf, "%d\n",
    !!test_bit(FLAG_ACTIVE_LOW, &desc->flags));

 mutex_unlock(&data->mutex);

 return status;
}
