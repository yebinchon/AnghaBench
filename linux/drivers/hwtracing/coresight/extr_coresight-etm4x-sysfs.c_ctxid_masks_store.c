
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct etmv4_config {unsigned long ctxid_mask0; unsigned long ctxid_mask1; int* ctxid_pid; } ;
struct etmv4_drvdata {int numcidc; int spinlock; int ctxid_size; struct etmv4_config config; } ;
struct device_attribute {int dummy; } ;
struct device {int parent; } ;
typedef size_t ssize_t ;


 size_t EINVAL ;
 unsigned long ETMv4_EVENT_MASK ;
 int current ;
 struct etmv4_drvdata* dev_get_drvdata (int ) ;
 int init_pid_ns ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int sscanf (char const*,char*,unsigned long*,unsigned long*) ;
 int * task_active_pid_ns (int ) ;

__attribute__((used)) static ssize_t ctxid_masks_store(struct device *dev,
    struct device_attribute *attr,
    const char *buf, size_t size)
{
 u8 i, j, maskbyte;
 unsigned long val1, val2, mask;
 struct etmv4_drvdata *drvdata = dev_get_drvdata(dev->parent);
 struct etmv4_config *config = &drvdata->config;





 if (task_active_pid_ns(current) != &init_pid_ns)
  return -EINVAL;






 if (!drvdata->ctxid_size || !drvdata->numcidc)
  return -EINVAL;
 if (sscanf(buf, "%lx %lx", &val1, &val2) != 2)
  return -EINVAL;

 spin_lock(&drvdata->spinlock);




 switch (drvdata->numcidc) {
 case 0x1:

  config->ctxid_mask0 = val1 & 0xFF;
  break;
 case 0x2:

  config->ctxid_mask0 = val1 & 0xFFFF;
  break;
 case 0x3:

  config->ctxid_mask0 = val1 & 0xFFFFFF;
  break;
 case 0x4:

  config->ctxid_mask0 = val1;
  break;
 case 0x5:

  config->ctxid_mask0 = val1;
  config->ctxid_mask1 = val2 & 0xFF;
  break;
 case 0x6:

  config->ctxid_mask0 = val1;
  config->ctxid_mask1 = val2 & 0xFFFF;
  break;
 case 0x7:

  config->ctxid_mask0 = val1;
  config->ctxid_mask1 = val2 & 0xFFFFFF;
  break;
 case 0x8:

  config->ctxid_mask0 = val1;
  config->ctxid_mask1 = val2;
  break;
 default:
  break;
 }






 mask = config->ctxid_mask0;
 for (i = 0; i < drvdata->numcidc; i++) {

  maskbyte = mask & ETMv4_EVENT_MASK;




  for (j = 0; j < 8; j++) {
   if (maskbyte & 1)
    config->ctxid_pid[i] &= ~(0xFFUL << (j * 8));
   maskbyte >>= 1;
  }

  if (i == 3)

   mask = config->ctxid_mask1;
  else
   mask >>= 0x8;
 }

 spin_unlock(&drvdata->spinlock);
 return size;
}
