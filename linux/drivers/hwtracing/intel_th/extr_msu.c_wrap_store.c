
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msc {int wrap; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 struct msc* dev_get_drvdata (struct device*) ;
 int kstrtoul (char const*,int,unsigned long*) ;

__attribute__((used)) static ssize_t
wrap_store(struct device *dev, struct device_attribute *attr, const char *buf,
    size_t size)
{
 struct msc *msc = dev_get_drvdata(dev);
 unsigned long val;
 int ret;

 ret = kstrtoul(buf, 10, &val);
 if (ret)
  return ret;

 msc->wrap = !!val;

 return size;
}
