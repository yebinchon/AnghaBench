
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct qi_desc {int qw0; scalar_t__ qw3; scalar_t__ qw2; scalar_t__ qw1; } ;
struct intel_iommu {int dummy; } ;


 int QI_PC_DID (int ) ;
 int QI_PC_PASID (int) ;
 int QI_PC_PASID_SEL ;
 int qi_submit_sync (struct qi_desc*,struct intel_iommu*) ;

__attribute__((used)) static void
pasid_cache_invalidation_with_pasid(struct intel_iommu *iommu,
        u16 did, int pasid)
{
 struct qi_desc desc;

 desc.qw0 = QI_PC_DID(did) | QI_PC_PASID_SEL | QI_PC_PASID(pasid);
 desc.qw1 = 0;
 desc.qw2 = 0;
 desc.qw3 = 0;

 qi_submit_sync(&desc, iommu);
}
