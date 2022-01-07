
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct funnel_drvdata {unsigned long priority; } ;
struct device_attribute {int dummy; } ;
struct device {int parent; } ;
typedef int ssize_t ;


 struct funnel_drvdata* dev_get_drvdata (int ) ;
 int sprintf (char*,char*,unsigned long) ;

__attribute__((used)) static ssize_t priority_show(struct device *dev,
        struct device_attribute *attr, char *buf)
{
 struct funnel_drvdata *drvdata = dev_get_drvdata(dev->parent);
 unsigned long val = drvdata->priority;

 return sprintf(buf, "%#lx\n", val);
}
