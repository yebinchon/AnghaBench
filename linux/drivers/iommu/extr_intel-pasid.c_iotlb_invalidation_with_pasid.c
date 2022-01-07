
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct qi_desc {int qw0; scalar_t__ qw3; scalar_t__ qw2; scalar_t__ qw1; } ;
struct intel_iommu {int dummy; } ;


 int QI_EIOTLB_DID (int ) ;
 int QI_EIOTLB_GRAN (int ) ;
 int QI_EIOTLB_PASID (int ) ;
 int QI_EIOTLB_TYPE ;
 int QI_GRAN_NONG_PASID ;
 int qi_submit_sync (struct qi_desc*,struct intel_iommu*) ;

__attribute__((used)) static void
iotlb_invalidation_with_pasid(struct intel_iommu *iommu, u16 did, u32 pasid)
{
 struct qi_desc desc;

 desc.qw0 = QI_EIOTLB_PASID(pasid) | QI_EIOTLB_DID(did) |
   QI_EIOTLB_GRAN(QI_GRAN_NONG_PASID) | QI_EIOTLB_TYPE;
 desc.qw1 = 0;
 desc.qw2 = 0;
 desc.qw3 = 0;

 qi_submit_sync(&desc, iommu);
}
