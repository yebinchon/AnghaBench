
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;


 scalar_t__ amd_iommu_last_bdf ;

__attribute__((used)) static inline void update_last_devid(u16 devid)
{
 if (devid > amd_iommu_last_bdf)
  amd_iommu_last_bdf = devid;
}
