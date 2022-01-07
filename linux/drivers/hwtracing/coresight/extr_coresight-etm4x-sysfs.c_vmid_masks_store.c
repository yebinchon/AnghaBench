
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct etmv4_config {unsigned long vmid_mask0; unsigned long vmid_mask1; int* vmid_val; } ;
struct etmv4_drvdata {int numvmidc; int spinlock; int vmid_size; struct etmv4_config config; } ;
struct device_attribute {int dummy; } ;
struct device {int parent; } ;
typedef size_t ssize_t ;


 size_t EINVAL ;
 unsigned long ETMv4_EVENT_MASK ;
 struct etmv4_drvdata* dev_get_drvdata (int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int sscanf (char const*,char*,unsigned long*,unsigned long*) ;

__attribute__((used)) static ssize_t vmid_masks_store(struct device *dev,
    struct device_attribute *attr,
    const char *buf, size_t size)
{
 u8 i, j, maskbyte;
 unsigned long val1, val2, mask;
 struct etmv4_drvdata *drvdata = dev_get_drvdata(dev->parent);
 struct etmv4_config *config = &drvdata->config;





 if (!drvdata->vmid_size || !drvdata->numvmidc)
  return -EINVAL;
 if (sscanf(buf, "%lx %lx", &val1, &val2) != 2)
  return -EINVAL;

 spin_lock(&drvdata->spinlock);





 switch (drvdata->numvmidc) {
 case 0x1:

  config->vmid_mask0 = val1 & 0xFF;
  break;
 case 0x2:

  config->vmid_mask0 = val1 & 0xFFFF;
  break;
 case 0x3:

  config->vmid_mask0 = val1 & 0xFFFFFF;
  break;
 case 0x4:

  config->vmid_mask0 = val1;
  break;
 case 0x5:

  config->vmid_mask0 = val1;
  config->vmid_mask1 = val2 & 0xFF;
  break;
 case 0x6:

  config->vmid_mask0 = val1;
  config->vmid_mask1 = val2 & 0xFFFF;
  break;
 case 0x7:

  config->vmid_mask0 = val1;
  config->vmid_mask1 = val2 & 0xFFFFFF;
  break;
 case 0x8:

  config->vmid_mask0 = val1;
  config->vmid_mask1 = val2;
  break;
 default:
  break;
 }







 mask = config->vmid_mask0;
 for (i = 0; i < drvdata->numvmidc; i++) {

  maskbyte = mask & ETMv4_EVENT_MASK;




  for (j = 0; j < 8; j++) {
   if (maskbyte & 1)
    config->vmid_val[i] &= ~(0xFFUL << (j * 8));
   maskbyte >>= 1;
  }

  if (i == 3)

   mask = config->vmid_mask1;
  else
   mask >>= 0x8;
 }
 spin_unlock(&drvdata->spinlock);
 return size;
}
