
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int LM3533_REG_PATTERN_RISETIME_BASE ;
 int show_risefalltime (struct device*,struct device_attribute*,char*,int ) ;

__attribute__((used)) static ssize_t show_risetime(struct device *dev,
    struct device_attribute *attr, char *buf)
{
 return show_risefalltime(dev, attr, buf,
     LM3533_REG_PATTERN_RISETIME_BASE);
}
