
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct etmv4_config {unsigned long eventctrl1; } ;
struct etmv4_drvdata {int nr_event; int spinlock; struct etmv4_config config; } ;
struct device_attribute {int dummy; } ;
struct device {int parent; } ;
typedef size_t ssize_t ;


 unsigned long BIT (int) ;
 size_t EINVAL ;
 struct etmv4_drvdata* dev_get_drvdata (int ) ;
 scalar_t__ kstrtoul (char const*,int,unsigned long*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static ssize_t event_instren_store(struct device *dev,
       struct device_attribute *attr,
       const char *buf, size_t size)
{
 unsigned long val;
 struct etmv4_drvdata *drvdata = dev_get_drvdata(dev->parent);
 struct etmv4_config *config = &drvdata->config;

 if (kstrtoul(buf, 16, &val))
  return -EINVAL;

 spin_lock(&drvdata->spinlock);

 config->eventctrl1 &= ~(BIT(0) | BIT(1) | BIT(2) | BIT(3));
 switch (drvdata->nr_event) {
 case 0x0:

  config->eventctrl1 |= val & BIT(1);
  break;
 case 0x1:

  config->eventctrl1 |= val & (BIT(0) | BIT(1));
  break;
 case 0x2:

  config->eventctrl1 |= val & (BIT(0) | BIT(1) | BIT(2));
  break;
 case 0x3:

  config->eventctrl1 |= val & 0xF;
  break;
 default:
  break;
 }
 spin_unlock(&drvdata->spinlock);
 return size;
}
