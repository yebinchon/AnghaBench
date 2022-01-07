
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct TYPE_2__ {int power_mode; } ;
struct adxl34x {int mutex; TYPE_1__ pdata; scalar_t__ opened; int suspended; int disabled; } ;
typedef int ssize_t ;


 int AC_WRITE (struct adxl34x*,int ,int) ;
 int PCTL_AUTO_SLEEP ;
 int PCTL_LINK ;
 int PCTL_MEASURE ;
 int POWER_CTL ;
 struct adxl34x* dev_get_drvdata (struct device*) ;
 int kstrtouint (char const*,int,unsigned int*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static ssize_t adxl34x_autosleep_store(struct device *dev,
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

 if (val)
  ac->pdata.power_mode |= (PCTL_AUTO_SLEEP | PCTL_LINK);
 else
  ac->pdata.power_mode &= ~(PCTL_AUTO_SLEEP | PCTL_LINK);

 if (!ac->disabled && !ac->suspended && ac->opened)
  AC_WRITE(ac, POWER_CTL, ac->pdata.power_mode | PCTL_MEASURE);

 mutex_unlock(&ac->mutex);

 return count;
}
