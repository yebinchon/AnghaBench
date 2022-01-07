
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stm_drvdata {unsigned long traceid; } ;
struct device_attribute {int dummy; } ;
struct device {int parent; } ;
typedef int ssize_t ;


 struct stm_drvdata* dev_get_drvdata (int ) ;
 int sprintf (char*,char*,unsigned long) ;

__attribute__((used)) static ssize_t traceid_show(struct device *dev,
       struct device_attribute *attr, char *buf)
{
 unsigned long val;
 struct stm_drvdata *drvdata = dev_get_drvdata(dev->parent);

 val = drvdata->traceid;
 return sprintf(buf, "%#lx\n", val);
}
