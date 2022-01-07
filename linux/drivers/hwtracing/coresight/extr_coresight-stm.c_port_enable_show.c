
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stm_drvdata {unsigned long stmsper; int spinlock; scalar_t__ base; int mode; } ;
struct device_attribute {int dummy; } ;
struct device {int parent; } ;
typedef int ssize_t ;


 int PAGE_SIZE ;
 scalar_t__ STMSPER ;
 struct stm_drvdata* dev_get_drvdata (int ) ;
 int local_read (int *) ;
 unsigned long readl_relaxed (scalar_t__) ;
 int scnprintf (char*,int ,char*,unsigned long) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static ssize_t port_enable_show(struct device *dev,
    struct device_attribute *attr, char *buf)
{
 struct stm_drvdata *drvdata = dev_get_drvdata(dev->parent);
 unsigned long val;

 if (!local_read(&drvdata->mode)) {
  val = drvdata->stmsper;
 } else {
  spin_lock(&drvdata->spinlock);
  val = readl_relaxed(drvdata->base + STMSPER);
  spin_unlock(&drvdata->spinlock);
 }

 return scnprintf(buf, PAGE_SIZE, "%#lx\n", val);
}
