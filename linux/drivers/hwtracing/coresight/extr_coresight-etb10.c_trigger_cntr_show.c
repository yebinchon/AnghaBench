
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct etb_drvdata {unsigned long trigger_cntr; } ;
struct device_attribute {int dummy; } ;
struct device {int parent; } ;
typedef int ssize_t ;


 struct etb_drvdata* dev_get_drvdata (int ) ;
 int sprintf (char*,char*,unsigned long) ;

__attribute__((used)) static ssize_t trigger_cntr_show(struct device *dev,
       struct device_attribute *attr, char *buf)
{
 struct etb_drvdata *drvdata = dev_get_drvdata(dev->parent);
 unsigned long val = drvdata->trigger_cntr;

 return sprintf(buf, "%#lx\n", val);
}
