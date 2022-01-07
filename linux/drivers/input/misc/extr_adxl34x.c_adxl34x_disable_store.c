
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct adxl34x {int disabled; int mutex; scalar_t__ opened; int suspended; } ;
typedef int ssize_t ;


 int __adxl34x_disable (struct adxl34x*) ;
 int __adxl34x_enable (struct adxl34x*) ;
 struct adxl34x* dev_get_drvdata (struct device*) ;
 int kstrtouint (char const*,int,unsigned int*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static ssize_t adxl34x_disable_store(struct device *dev,
         struct device_attribute *attr,
         const char *buf, size_t count)
{
 struct adxl34x *ac = dev_get_drvdata(dev);
 unsigned int val;
 int error;

 error = kstrtouint(buf, 10, &val);
 if (error)
  return error;

 mutex_lock(&ac->mutex);

 if (!ac->suspended && ac->opened) {
  if (val) {
   if (!ac->disabled)
    __adxl34x_disable(ac);
  } else {
   if (ac->disabled)
    __adxl34x_enable(ac);
  }
 }

 ac->disabled = !!val;

 mutex_unlock(&ac->mutex);

 return count;
}
