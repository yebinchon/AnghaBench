
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct amd_iommu {int exclusion_start; int exclusion_length; scalar_t__ mmio_base; } ;
typedef int entry ;


 scalar_t__ MMIO_EXCL_BASE_OFFSET ;
 int MMIO_EXCL_ENABLE_MASK ;
 scalar_t__ MMIO_EXCL_LIMIT_OFFSET ;
 int PAGE_MASK ;
 int memcpy_toio (scalar_t__,int*,int) ;

__attribute__((used)) static void iommu_set_exclusion_range(struct amd_iommu *iommu)
{
 u64 start = iommu->exclusion_start & PAGE_MASK;
 u64 limit = (start + iommu->exclusion_length - 1) & PAGE_MASK;
 u64 entry;

 if (!iommu->exclusion_start)
  return;

 entry = start | MMIO_EXCL_ENABLE_MASK;
 memcpy_toio(iommu->mmio_base + MMIO_EXCL_BASE_OFFSET,
   &entry, sizeof(entry));

 entry = limit;
 memcpy_toio(iommu->mmio_base + MMIO_EXCL_LIMIT_OFFSET,
   &entry, sizeof(entry));
}
