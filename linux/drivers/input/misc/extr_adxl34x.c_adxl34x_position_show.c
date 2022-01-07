
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct TYPE_2__ {int x; int y; int z; } ;
struct adxl34x {int mutex; TYPE_1__ saved; } ;
typedef int ssize_t ;


 struct adxl34x* dev_get_drvdata (struct device*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int sprintf (char*,char*,int,int,int) ;

__attribute__((used)) static ssize_t adxl34x_position_show(struct device *dev,
     struct device_attribute *attr, char *buf)
{
 struct adxl34x *ac = dev_get_drvdata(dev);
 ssize_t count;

 mutex_lock(&ac->mutex);
 count = sprintf(buf, "(%d, %d, %d)\n",
   ac->saved.x, ac->saved.y, ac->saved.z);
 mutex_unlock(&ac->mutex);

 return count;
}
