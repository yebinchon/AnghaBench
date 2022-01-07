
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int show_hyst_common (struct device*,struct device_attribute*,char*,int) ;

__attribute__((used)) static ssize_t hyst_show(struct device *dev, struct device_attribute *attr,
    char *buf)
{
 return show_hyst_common(dev, attr, buf, 0);
}
