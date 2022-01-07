
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
struct etmv4_config {size_t addr_idx; int * addr_acc; } ;
struct etmv4_drvdata {int spinlock; struct etmv4_config config; } ;
struct device_attribute {int dummy; } ;
struct device {int parent; } ;
typedef int ssize_t ;


 size_t BMVAL (int ,int,int) ;
 size_t ETM_CTX_CTXID ;
 size_t ETM_CTX_NONE ;
 size_t ETM_CTX_VMID ;
 int PAGE_SIZE ;
 struct etmv4_drvdata* dev_get_drvdata (int ) ;
 int scnprintf (char*,int ,char*,char*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static ssize_t addr_ctxtype_show(struct device *dev,
     struct device_attribute *attr,
     char *buf)
{
 ssize_t len;
 u8 idx, val;
 struct etmv4_drvdata *drvdata = dev_get_drvdata(dev->parent);
 struct etmv4_config *config = &drvdata->config;

 spin_lock(&drvdata->spinlock);
 idx = config->addr_idx;

 val = BMVAL(config->addr_acc[idx], 2, 3);
 len = scnprintf(buf, PAGE_SIZE, "%s\n", val == ETM_CTX_NONE ? "none" :
   (val == ETM_CTX_CTXID ? "ctxid" :
   (val == ETM_CTX_VMID ? "vmid" : "all")));
 spin_unlock(&drvdata->spinlock);
 return len;
}
