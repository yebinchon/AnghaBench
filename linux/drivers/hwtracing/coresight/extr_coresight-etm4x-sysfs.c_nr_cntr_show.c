
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct etmv4_drvdata {unsigned long nr_cntr; } ;
struct device_attribute {int dummy; } ;
struct device {int parent; } ;
typedef int ssize_t ;


 int PAGE_SIZE ;
 struct etmv4_drvdata* dev_get_drvdata (int ) ;
 int scnprintf (char*,int ,char*,unsigned long) ;

__attribute__((used)) static ssize_t nr_cntr_show(struct device *dev,
       struct device_attribute *attr,
       char *buf)
{
 unsigned long val;
 struct etmv4_drvdata *drvdata = dev_get_drvdata(dev->parent);

 val = drvdata->nr_cntr;
 return scnprintf(buf, PAGE_SIZE, "%#lx\n", val);
}
