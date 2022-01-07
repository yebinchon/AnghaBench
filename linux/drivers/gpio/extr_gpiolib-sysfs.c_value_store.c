
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpiod_data {int mutex; struct gpio_desc* desc; } ;
struct gpio_desc {int flags; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef size_t ssize_t ;


 size_t EPERM ;
 int FLAG_IS_OUT ;
 struct gpiod_data* dev_get_drvdata (struct device*) ;
 int gpiod_set_value_cansleep (struct gpio_desc*,long) ;
 scalar_t__ isdigit (char const) ;
 size_t kstrtol (char const*,int ,long*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int test_bit (int ,int *) ;

__attribute__((used)) static ssize_t value_store(struct device *dev,
  struct device_attribute *attr, const char *buf, size_t size)
{
 struct gpiod_data *data = dev_get_drvdata(dev);
 struct gpio_desc *desc = data->desc;
 ssize_t status = 0;

 mutex_lock(&data->mutex);

 if (!test_bit(FLAG_IS_OUT, &desc->flags)) {
  status = -EPERM;
 } else {
  long value;

  if (size <= 2 && isdigit(buf[0]) &&
      (size == 1 || buf[1] == '\n'))
   value = buf[0] - '0';
  else
   status = kstrtol(buf, 0, &value);
  if (status == 0) {
   gpiod_set_value_cansleep(desc, value);
   status = size;
  }
 }

 mutex_unlock(&data->mutex);

 return status;
}
