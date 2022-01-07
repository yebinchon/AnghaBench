
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct intel_iommu {int dummy; } ;
struct device_domain_info {int bus; int devfn; int ats_qdep; int pfsid; int ats_enabled; } ;
struct TYPE_2__ {struct device_domain_info* iommu; } ;
struct device {TYPE_1__ archdata; } ;


 scalar_t__ VTD_PAGE_SHIFT ;
 int qi_flush_dev_iotlb (struct intel_iommu*,int,int,int,int ,scalar_t__) ;

__attribute__((used)) static void
devtlb_invalidation_with_pasid(struct intel_iommu *iommu,
          struct device *dev, int pasid)
{
 struct device_domain_info *info;
 u16 sid, qdep, pfsid;

 info = dev->archdata.iommu;
 if (!info || !info->ats_enabled)
  return;

 sid = info->bus << 8 | info->devfn;
 qdep = info->ats_qdep;
 pfsid = info->pfsid;

 qi_flush_dev_iotlb(iommu, sid, pfsid, qdep, 0, 64 - VTD_PAGE_SHIFT);
}
