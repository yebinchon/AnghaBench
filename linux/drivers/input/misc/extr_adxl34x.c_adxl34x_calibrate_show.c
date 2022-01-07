
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct TYPE_4__ {int x; int y; int z; } ;
struct TYPE_3__ {int x; int y; int z; } ;
struct adxl34x {int mutex; TYPE_2__ swcal; TYPE_1__ hwcal; } ;
typedef int ssize_t ;


 struct adxl34x* dev_get_drvdata (struct device*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int sprintf (char*,char*,int,int,int) ;

__attribute__((used)) static ssize_t adxl34x_calibrate_show(struct device *dev,
          struct device_attribute *attr, char *buf)
{
 struct adxl34x *ac = dev_get_drvdata(dev);
 ssize_t count;

 mutex_lock(&ac->mutex);
 count = sprintf(buf, "%d,%d,%d\n",
   ac->hwcal.x * 4 + ac->swcal.x,
   ac->hwcal.y * 4 + ac->swcal.y,
   ac->hwcal.z * 4 + ac->swcal.z);
 mutex_unlock(&ac->mutex);

 return count;
}
