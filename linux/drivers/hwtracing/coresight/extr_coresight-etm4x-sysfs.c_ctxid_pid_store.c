
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
typedef scalar_t__ u64 ;
struct etmv4_config {size_t ctxid_idx; scalar_t__* ctxid_pid; } ;
struct etmv4_drvdata {int spinlock; int numcidc; int ctxid_size; struct etmv4_config config; } ;
struct device_attribute {int dummy; } ;
struct device {int parent; } ;
typedef size_t ssize_t ;


 size_t EINVAL ;
 int current ;
 struct etmv4_drvdata* dev_get_drvdata (int ) ;
 int init_pid_ns ;
 scalar_t__ kstrtoul (char const*,int,unsigned long*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int * task_active_pid_ns (int ) ;

__attribute__((used)) static ssize_t ctxid_pid_store(struct device *dev,
          struct device_attribute *attr,
          const char *buf, size_t size)
{
 u8 idx;
 unsigned long pid;
 struct etmv4_drvdata *drvdata = dev_get_drvdata(dev->parent);
 struct etmv4_config *config = &drvdata->config;
 if (task_active_pid_ns(current) != &init_pid_ns)
  return -EINVAL;






 if (!drvdata->ctxid_size || !drvdata->numcidc)
  return -EINVAL;
 if (kstrtoul(buf, 16, &pid))
  return -EINVAL;

 spin_lock(&drvdata->spinlock);
 idx = config->ctxid_idx;
 config->ctxid_pid[idx] = (u64)pid;
 spin_unlock(&drvdata->spinlock);
 return size;
}
