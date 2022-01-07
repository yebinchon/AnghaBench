
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sht21 {int lock; int * eic; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 struct sht21* dev_get_drvdata (struct device*) ;
 int eic_read (struct sht21*) ;
 int memcpy (char*,int *,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static ssize_t eic_show(struct device *dev,
 struct device_attribute *attr,
 char *buf)
{
 struct sht21 *sht21 = dev_get_drvdata(dev);
 int ret;

 ret = sizeof(sht21->eic) - 1;
 mutex_lock(&sht21->lock);
 if (!sht21->eic[0])
  ret = eic_read(sht21);
 if (ret > 0)
  memcpy(buf, sht21->eic, ret);
 mutex_unlock(&sht21->lock);
 return ret;
}
