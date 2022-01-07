
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pti_device {unsigned int clkdiv; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int PAGE_SIZE ;
 struct pti_device* dev_get_drvdata (struct device*) ;
 int scnprintf (char*,int ,char*,unsigned int) ;

__attribute__((used)) static ssize_t
clock_divider_show(struct device *dev, struct device_attribute *attr,
     char *buf)
{
 struct pti_device *pti = dev_get_drvdata(dev);

 return scnprintf(buf, PAGE_SIZE, "%d\n", 1u << pti->clkdiv);
}
