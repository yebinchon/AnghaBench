
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stm_drvdata {unsigned long stmhebsr; } ;
struct device_attribute {int dummy; } ;
struct device {int parent; } ;
typedef int ssize_t ;


 int PAGE_SIZE ;
 struct stm_drvdata* dev_get_drvdata (int ) ;
 int scnprintf (char*,int ,char*,unsigned long) ;

__attribute__((used)) static ssize_t hwevent_select_show(struct device *dev,
       struct device_attribute *attr, char *buf)
{
 struct stm_drvdata *drvdata = dev_get_drvdata(dev->parent);
 unsigned long val = drvdata->stmhebsr;

 return scnprintf(buf, PAGE_SIZE, "%#lx\n", val);
}
