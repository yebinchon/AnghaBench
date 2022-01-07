
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int LM3533_REG_PATTERN_FALLTIME_BASE ;
 int store_risefalltime (struct device*,struct device_attribute*,char const*,size_t,int ) ;

__attribute__((used)) static ssize_t store_falltime(struct device *dev,
     struct device_attribute *attr,
     const char *buf, size_t len)
{
 return store_risefalltime(dev, attr, buf, len,
     LM3533_REG_PATTERN_FALLTIME_BASE);
}
