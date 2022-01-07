
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct TYPE_2__ {int yTilt; } ;
struct aiptek {TYPE_1__ newSetting; } ;
typedef size_t ssize_t ;


 int AIPTEK_TILT_DISABLE ;
 int AIPTEK_TILT_MAX ;
 int AIPTEK_TILT_MIN ;
 size_t EINVAL ;
 struct aiptek* dev_get_drvdata (struct device*) ;
 scalar_t__ kstrtoint (char const*,int,int*) ;
 scalar_t__ strncmp (char const*,char*,size_t) ;

__attribute__((used)) static ssize_t
store_tabletYtilt(struct device *dev, struct device_attribute *attr, const char *buf, size_t count)
{
 struct aiptek *aiptek = dev_get_drvdata(dev);
 int y;

 if (kstrtoint(buf, 10, &y)) {
  size_t len = buf[count - 1] == '\n' ? count - 1 : count;

  if (strncmp(buf, "disable", len))
   return -EINVAL;

  aiptek->newSetting.yTilt = AIPTEK_TILT_DISABLE;
 } else {
  if (y < AIPTEK_TILT_MIN || y > AIPTEK_TILT_MAX)
   return -EINVAL;

  aiptek->newSetting.yTilt = y;
 }

 return count;
}
