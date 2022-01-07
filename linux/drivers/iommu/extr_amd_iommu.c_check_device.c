
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dma_mask; } ;


 int amd_iommu_last_bdf ;
 int ** amd_iommu_rlookup_table ;
 int get_device_id (struct device*) ;

__attribute__((used)) static bool check_device(struct device *dev)
{
 int devid;

 if (!dev || !dev->dma_mask)
  return 0;

 devid = get_device_id(dev);
 if (devid < 0)
  return 0;


 if (devid > amd_iommu_last_bdf)
  return 0;

 if (amd_iommu_rlookup_table[devid] == ((void*)0))
  return 0;

 return 1;
}
