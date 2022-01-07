
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct etm_config {unsigned long* ctxid_pid; size_t ctxid_idx; } ;
struct etm_drvdata {int spinlock; struct etm_config config; } ;
struct device_attribute {int dummy; } ;
struct device {int parent; } ;
typedef int ssize_t ;


 int EINVAL ;
 int current ;
 struct etm_drvdata* dev_get_drvdata (int ) ;
 int init_pid_ns ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int sprintf (char*,char*,unsigned long) ;
 int * task_active_pid_ns (int ) ;

__attribute__((used)) static ssize_t ctxid_pid_show(struct device *dev,
         struct device_attribute *attr, char *buf)
{
 unsigned long val;
 struct etm_drvdata *drvdata = dev_get_drvdata(dev->parent);
 struct etm_config *config = &drvdata->config;





 if (task_active_pid_ns(current) != &init_pid_ns)
  return -EINVAL;

 spin_lock(&drvdata->spinlock);
 val = config->ctxid_pid[config->ctxid_idx];
 spin_unlock(&drvdata->spinlock);

 return sprintf(buf, "%#lx\n", val);
}
