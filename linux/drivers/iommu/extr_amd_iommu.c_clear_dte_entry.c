
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u16 ;
struct TYPE_2__ {int* data; } ;


 int DTE_FLAG_MASK ;
 int DTE_FLAG_TV ;
 int DTE_FLAG_V ;
 int amd_iommu_apply_erratum_63 (size_t) ;
 TYPE_1__* amd_iommu_dev_table ;

__attribute__((used)) static void clear_dte_entry(u16 devid)
{

 amd_iommu_dev_table[devid].data[0] = DTE_FLAG_V | DTE_FLAG_TV;
 amd_iommu_dev_table[devid].data[1] &= DTE_FLAG_MASK;

 amd_iommu_apply_erratum_63(devid);
}
