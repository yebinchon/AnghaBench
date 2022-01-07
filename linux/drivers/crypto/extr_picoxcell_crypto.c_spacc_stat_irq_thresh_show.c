
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spacc_engine {int stat_irq_thresh; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int PAGE_SIZE ;
 int snprintf (char*,int ,char*,int) ;
 struct spacc_engine* spacc_dev_to_engine (struct device*) ;

__attribute__((used)) static ssize_t spacc_stat_irq_thresh_show(struct device *dev,
       struct device_attribute *attr,
       char *buf)
{
 struct spacc_engine *engine = spacc_dev_to_engine(dev);

 return snprintf(buf, PAGE_SIZE, "%u\n", engine->stat_irq_thresh);
}
