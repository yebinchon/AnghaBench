
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stm_drvdata {unsigned long stmspscr; int spinlock; scalar_t__ base; int mode; } ;
struct device_attribute {int dummy; } ;
struct device {int parent; } ;
typedef int ssize_t ;


 int CS_LOCK (scalar_t__) ;
 int CS_UNLOCK (scalar_t__) ;
 scalar_t__ STMSPER ;
 scalar_t__ STMSPSCR ;
 struct stm_drvdata* dev_get_drvdata (int ) ;
 int kstrtoul (char const*,int,unsigned long*) ;
 scalar_t__ local_read (int *) ;
 unsigned long readl_relaxed (scalar_t__) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int writel_relaxed (unsigned long,scalar_t__) ;

__attribute__((used)) static ssize_t port_select_store(struct device *dev,
     struct device_attribute *attr,
     const char *buf, size_t size)
{
 struct stm_drvdata *drvdata = dev_get_drvdata(dev->parent);
 unsigned long val, stmsper;
 int ret = 0;

 ret = kstrtoul(buf, 16, &val);
 if (ret)
  return ret;

 spin_lock(&drvdata->spinlock);
 drvdata->stmspscr = val;

 if (local_read(&drvdata->mode)) {
  CS_UNLOCK(drvdata->base);

  stmsper = readl_relaxed(drvdata->base + STMSPER);
  writel_relaxed(0x0, drvdata->base + STMSPER);
  writel_relaxed(drvdata->stmspscr, drvdata->base + STMSPSCR);
  writel_relaxed(stmsper, drvdata->base + STMSPER);
  CS_LOCK(drvdata->base);
 }
 spin_unlock(&drvdata->spinlock);

 return size;
}
