
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qi_desc {int qw0; scalar_t__ qw3; scalar_t__ qw2; scalar_t__ qw1; } ;
struct intel_iommu {int dummy; } ;


 int QI_IEC_IIDEX (int) ;
 int QI_IEC_IM (int) ;
 int QI_IEC_SELECTIVE ;
 int QI_IEC_TYPE ;
 int qi_submit_sync (struct qi_desc*,struct intel_iommu*) ;

__attribute__((used)) static int qi_flush_iec(struct intel_iommu *iommu, int index, int mask)
{
 struct qi_desc desc;

 desc.qw0 = QI_IEC_IIDEX(index) | QI_IEC_TYPE | QI_IEC_IM(mask)
     | QI_IEC_SELECTIVE;
 desc.qw1 = 0;
 desc.qw2 = 0;
 desc.qw3 = 0;

 return qi_submit_sync(&desc, iommu);
}
