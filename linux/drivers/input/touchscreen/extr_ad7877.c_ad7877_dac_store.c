
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct ad7877 {unsigned int dac; int mutex; int spi; } ;
typedef int ssize_t ;


 int AD7877_DAC_CONF ;
 int AD7877_REG_DAC ;
 int ad7877_write (int ,int ,int) ;
 struct ad7877* dev_get_drvdata (struct device*) ;
 int kstrtouint (char const*,int,unsigned int*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static ssize_t ad7877_dac_store(struct device *dev,
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
 ts->dac = val & 0xFF;
 ad7877_write(ts->spi, AD7877_REG_DAC, (ts->dac << 4) | AD7877_DAC_CONF);
 mutex_unlock(&ts->mutex);

 return count;
}
