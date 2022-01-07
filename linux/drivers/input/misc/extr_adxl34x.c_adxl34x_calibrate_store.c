
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct TYPE_6__ {scalar_t__ z; scalar_t__ y; scalar_t__ x; } ;
struct TYPE_5__ {int x; int y; int z; } ;
struct TYPE_4__ {int x; int y; int z; } ;
struct adxl34x {int mutex; TYPE_3__ hwcal; TYPE_2__ saved; TYPE_1__ swcal; } ;
typedef size_t ssize_t ;
typedef int s8 ;


 int AC_WRITE (struct adxl34x*,int ,int ) ;
 int OFSX ;
 int OFSY ;
 int OFSZ ;
 struct adxl34x* dev_get_drvdata (struct device*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static ssize_t adxl34x_calibrate_store(struct device *dev,
           struct device_attribute *attr,
           const char *buf, size_t count)
{
 struct adxl34x *ac = dev_get_drvdata(dev);






 mutex_lock(&ac->mutex);
 ac->hwcal.x -= (ac->saved.x / 4);
 ac->swcal.x = ac->saved.x % 4;

 ac->hwcal.y -= (ac->saved.y / 4);
 ac->swcal.y = ac->saved.y % 4;

 ac->hwcal.z -= (ac->saved.z / 4);
 ac->swcal.z = ac->saved.z % 4;

 AC_WRITE(ac, OFSX, (s8) ac->hwcal.x);
 AC_WRITE(ac, OFSY, (s8) ac->hwcal.y);
 AC_WRITE(ac, OFSZ, (s8) ac->hwcal.z);
 mutex_unlock(&ac->mutex);

 return count;
}
