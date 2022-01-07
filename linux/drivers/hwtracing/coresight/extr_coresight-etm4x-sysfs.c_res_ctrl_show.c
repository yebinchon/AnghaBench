
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
struct etmv4_config {size_t res_idx; unsigned long* res_ctrl; } ;
struct etmv4_drvdata {int spinlock; struct etmv4_config config; } ;
struct device_attribute {int dummy; } ;
struct device {int parent; } ;
typedef int ssize_t ;


 int PAGE_SIZE ;
 struct etmv4_drvdata* dev_get_drvdata (int ) ;
 int scnprintf (char*,int ,char*,unsigned long) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static ssize_t res_ctrl_show(struct device *dev,
        struct device_attribute *attr,
        char *buf)
{
 u8 idx;
 unsigned long val;
 struct etmv4_drvdata *drvdata = dev_get_drvdata(dev->parent);
 struct etmv4_config *config = &drvdata->config;

 spin_lock(&drvdata->spinlock);
 idx = config->res_idx;
 val = config->res_ctrl[idx];
 spin_unlock(&drvdata->spinlock);
 return scnprintf(buf, PAGE_SIZE, "%#lx\n", val);
}
