
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
struct etmv4_config {size_t ctxid_idx; scalar_t__* ctxid_pid; } ;
struct etmv4_drvdata {int spinlock; struct etmv4_config config; } ;
struct device_attribute {int dummy; } ;
struct device {int parent; } ;
typedef int ssize_t ;


 int EINVAL ;
 int PAGE_SIZE ;
 int current ;
 struct etmv4_drvdata* dev_get_drvdata (int ) ;
 int init_pid_ns ;
 int scnprintf (char*,int ,char*,unsigned long) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int * task_active_pid_ns (int ) ;

__attribute__((used)) static ssize_t ctxid_pid_show(struct device *dev,
         struct device_attribute *attr,
         char *buf)
{
 u8 idx;
 unsigned long val;
 struct etmv4_drvdata *drvdata = dev_get_drvdata(dev->parent);
 struct etmv4_config *config = &drvdata->config;





 if (task_active_pid_ns(current) != &init_pid_ns)
  return -EINVAL;

 spin_lock(&drvdata->spinlock);
 idx = config->ctxid_idx;
 val = (unsigned long)config->ctxid_pid[idx];
 spin_unlock(&drvdata->spinlock);
 return scnprintf(buf, PAGE_SIZE, "%#lx\n", val);
}
