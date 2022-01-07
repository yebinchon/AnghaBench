
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct etm_drvdata {int cpu; } ;
struct device_attribute {int dummy; } ;
struct device {int parent; } ;
typedef int ssize_t ;


 int PAGE_SIZE ;
 struct etm_drvdata* dev_get_drvdata (int ) ;
 int scnprintf (char*,int ,char*,int) ;

__attribute__((used)) static ssize_t cpu_show(struct device *dev,
   struct device_attribute *attr, char *buf)
{
 int val;
 struct etm_drvdata *drvdata = dev_get_drvdata(dev->parent);

 val = drvdata->cpu;
 return scnprintf(buf, PAGE_SIZE, "%d\n", val);

}
