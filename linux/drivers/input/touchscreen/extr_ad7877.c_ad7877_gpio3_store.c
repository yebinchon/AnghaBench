
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct ad7877 {int gpio3; int gpio4; int mutex; int spi; } ;
typedef int ssize_t ;


 int AD7877_EXTW_GPIO_DATA ;
 int AD7877_REG_EXTWRITE ;
 int ad7877_write (int ,int ,int) ;
 struct ad7877* dev_get_drvdata (struct device*) ;
 int kstrtouint (char const*,int,unsigned int*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static ssize_t ad7877_gpio3_store(struct device *dev,
         struct device_attribute *attr,
         const char *buf, size_t count)
{
 struct ad7877 *ts = dev_get_drvdata(dev);
 unsigned int val;
 int error;

 error = kstrtouint(buf, 10, &val);
 if (error)
  return error;

 mutex_lock(&ts->mutex);
 ts->gpio3 = !!val;
 ad7877_write(ts->spi, AD7877_REG_EXTWRITE, AD7877_EXTW_GPIO_DATA |
   (ts->gpio4 << 4) | (ts->gpio3 << 5));
 mutex_unlock(&ts->mutex);

 return count;
}
