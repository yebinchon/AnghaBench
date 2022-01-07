
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct TYPE_2__ {int wheel; } ;
struct aiptek {TYPE_1__ newSetting; } ;
typedef int ssize_t ;


 struct aiptek* dev_get_drvdata (struct device*) ;
 int kstrtoint (char const*,int,int*) ;

__attribute__((used)) static ssize_t
store_tabletWheel(struct device *dev, struct device_attribute *attr, const char *buf, size_t count)
{
 struct aiptek *aiptek = dev_get_drvdata(dev);
 int err, w;

 err = kstrtoint(buf, 10, &w);
 if (err)
  return err;

 aiptek->newSetting.wheel = w;
 return count;
}
