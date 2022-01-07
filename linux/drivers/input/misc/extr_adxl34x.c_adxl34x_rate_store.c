
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct TYPE_2__ {int data_rate; scalar_t__ low_power_mode; } ;
struct adxl34x {int mutex; TYPE_1__ pdata; } ;
typedef int ssize_t ;


 int AC_WRITE (struct adxl34x*,int ,int) ;
 int BW_RATE ;
 int LOW_POWER ;
 int RATE (unsigned char) ;
 struct adxl34x* dev_get_drvdata (struct device*) ;
 int kstrtou8 (char const*,int,unsigned char*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static ssize_t adxl34x_rate_store(struct device *dev,
      struct device_attribute *attr,
      const char *buf, size_t count)
{
 struct adxl34x *ac = dev_get_drvdata(dev);
 unsigned char val;
 int error;

 error = kstrtou8(buf, 10, &val);
 if (error)
  return error;

 mutex_lock(&ac->mutex);

 ac->pdata.data_rate = RATE(val);
 AC_WRITE(ac, BW_RATE,
   ac->pdata.data_rate |
   (ac->pdata.low_power_mode ? LOW_POWER : 0));

 mutex_unlock(&ac->mutex);

 return count;
}
