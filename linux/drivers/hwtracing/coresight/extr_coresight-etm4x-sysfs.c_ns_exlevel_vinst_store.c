
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct etmv4_config {int vinst_ctrl; } ;
struct etmv4_drvdata {unsigned long ns_ex_level; int spinlock; struct etmv4_config config; } ;
struct device_attribute {int dummy; } ;
struct device {int parent; } ;
typedef size_t ssize_t ;


 int BIT (int) ;
 size_t EINVAL ;
 struct etmv4_drvdata* dev_get_drvdata (int ) ;
 scalar_t__ kstrtoul (char const*,int,unsigned long*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static ssize_t ns_exlevel_vinst_store(struct device *dev,
          struct device_attribute *attr,
          const char *buf, size_t size)
{
 unsigned long val;
 struct etmv4_drvdata *drvdata = dev_get_drvdata(dev->parent);
 struct etmv4_config *config = &drvdata->config;

 if (kstrtoul(buf, 16, &val))
  return -EINVAL;

 spin_lock(&drvdata->spinlock);

 config->vinst_ctrl &= ~(BIT(20) | BIT(21) | BIT(22));

 val &= drvdata->ns_ex_level;
 config->vinst_ctrl |= (val << 20);
 spin_unlock(&drvdata->spinlock);
 return size;
}
