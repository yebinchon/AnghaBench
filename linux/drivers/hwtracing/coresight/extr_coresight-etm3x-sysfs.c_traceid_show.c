
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct etm_drvdata {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int parent; } ;
typedef int ssize_t ;


 struct etm_drvdata* dev_get_drvdata (int ) ;
 unsigned long etm_get_trace_id (struct etm_drvdata*) ;
 int sprintf (char*,char*,unsigned long) ;

__attribute__((used)) static ssize_t traceid_show(struct device *dev,
       struct device_attribute *attr, char *buf)
{
 unsigned long val;
 struct etm_drvdata *drvdata = dev_get_drvdata(dev->parent);

 val = etm_get_trace_id(drvdata);

 return sprintf(buf, "%#lx\n", val);
}
