
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct funnel_drvdata {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int parent; } ;
typedef int ssize_t ;


 struct funnel_drvdata* dev_get_drvdata (int ) ;
 int get_funnel_ctrl_hw (struct funnel_drvdata*) ;
 int pm_runtime_get_sync (int ) ;
 int pm_runtime_put (int ) ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static ssize_t funnel_ctrl_show(struct device *dev,
        struct device_attribute *attr, char *buf)
{
 u32 val;
 struct funnel_drvdata *drvdata = dev_get_drvdata(dev->parent);

 pm_runtime_get_sync(dev->parent);

 val = get_funnel_ctrl_hw(drvdata);

 pm_runtime_put(dev->parent);

 return sprintf(buf, "%#x\n", val);
}
