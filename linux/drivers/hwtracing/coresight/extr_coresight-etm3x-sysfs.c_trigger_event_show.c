
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct etm_config {unsigned long trigger_event; } ;
struct etm_drvdata {struct etm_config config; } ;
struct device_attribute {int dummy; } ;
struct device {int parent; } ;
typedef int ssize_t ;


 struct etm_drvdata* dev_get_drvdata (int ) ;
 int sprintf (char*,char*,unsigned long) ;

__attribute__((used)) static ssize_t trigger_event_show(struct device *dev,
      struct device_attribute *attr, char *buf)
{
 unsigned long val;
 struct etm_drvdata *drvdata = dev_get_drvdata(dev->parent);
 struct etm_config *config = &drvdata->config;

 val = config->trigger_event;
 return sprintf(buf, "%#lx\n", val);
}
