
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u16 ;
struct device {int dummy; } ;
struct dev_table_entry {int dummy; } ;


 int * amd_iommu_dev_table ;
 int ** amd_iommu_rlookup_table ;
 size_t get_alias (struct device*) ;
 int get_device_id (struct device*) ;
 int memset (int *,int ,int) ;

__attribute__((used)) static void iommu_ignore_device(struct device *dev)
{
 u16 alias;
 int devid;

 devid = get_device_id(dev);
 if (devid < 0)
  return;

 alias = get_alias(dev);

 memset(&amd_iommu_dev_table[devid], 0, sizeof(struct dev_table_entry));
 memset(&amd_iommu_dev_table[alias], 0, sizeof(struct dev_table_entry));

 amd_iommu_rlookup_table[devid] = ((void*)0);
 amd_iommu_rlookup_table[alias] = ((void*)0);
}
