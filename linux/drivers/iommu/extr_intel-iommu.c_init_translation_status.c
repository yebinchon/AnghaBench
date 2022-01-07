
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct intel_iommu {int flags; scalar_t__ reg; } ;


 scalar_t__ DMAR_GSTS_REG ;
 int DMA_GSTS_TES ;
 int VTD_FLAG_TRANS_PRE_ENABLED ;
 int readl (scalar_t__) ;

__attribute__((used)) static void init_translation_status(struct intel_iommu *iommu)
{
 u32 gsts;

 gsts = readl(iommu->reg + DMAR_GSTS_REG);
 if (gsts & DMA_GSTS_TES)
  iommu->flags |= VTD_FLAG_TRANS_PRE_ENABLED;
}
