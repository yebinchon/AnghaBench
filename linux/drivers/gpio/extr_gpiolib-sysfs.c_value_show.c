
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpiod_data {int mutex; struct gpio_desc* desc; } ;
struct gpio_desc {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef char ssize_t ;


 struct gpiod_data* dev_get_drvdata (struct device*) ;
 char gpiod_get_value_cansleep (struct gpio_desc*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static ssize_t value_show(struct device *dev,
  struct device_attribute *attr, char *buf)
{
 struct gpiod_data *data = dev_get_drvdata(dev);
 struct gpio_desc *desc = data->desc;
 ssize_t status;

 mutex_lock(&data->mutex);

 status = gpiod_get_value_cansleep(desc);
 if (status < 0)
  goto err;

 buf[0] = '0' + status;
 buf[1] = '\n';
 status = 2;
err:
 mutex_unlock(&data->mutex);

 return status;
}
