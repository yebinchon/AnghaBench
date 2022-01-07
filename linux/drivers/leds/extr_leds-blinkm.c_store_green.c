
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int GREEN ;
 int store_color_common (struct device*,char const*,int ) ;

__attribute__((used)) static ssize_t store_green(struct device *dev, struct device_attribute *attr,
      const char *buf, size_t count)
{

 int ret;

 ret = store_color_common(dev, buf, GREEN);
 if (ret < 0)
  return ret;
 return count;
}
