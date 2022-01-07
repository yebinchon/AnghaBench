
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u16 ;
struct iommu_dev_data {int defer_attach; } ;
struct amd_iommu {int dummy; } ;


 struct iommu_dev_data* alloc_dev_data (size_t) ;
 struct amd_iommu** amd_iommu_rlookup_table ;
 struct iommu_dev_data* search_dev_data (size_t) ;
 scalar_t__ translation_pre_enabled (struct amd_iommu*) ;

__attribute__((used)) static struct iommu_dev_data *find_dev_data(u16 devid)
{
 struct iommu_dev_data *dev_data;
 struct amd_iommu *iommu = amd_iommu_rlookup_table[devid];

 dev_data = search_dev_data(devid);

 if (dev_data == ((void*)0)) {
  dev_data = alloc_dev_data(devid);
  if (!dev_data)
   return ((void*)0);

  if (translation_pre_enabled(iommu))
   dev_data->defer_attach = 1;
 }

 return dev_data;
}
