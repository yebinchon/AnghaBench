
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_iommu {int flags; } ;


 int VTD_FLAG_IRQ_REMAP_PRE_ENABLED ;

__attribute__((used)) static void clear_ir_pre_enabled(struct intel_iommu *iommu)
{
 iommu->flags &= ~VTD_FLAG_IRQ_REMAP_PRE_ENABLED;
}
