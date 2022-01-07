
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct omap_iommu {int dummy; } ;


 int MMU_FAULT_AD ;
 int MMU_IRQSTATUS ;
 int MMU_IRQ_MASK ;
 int iommu_read_reg (struct omap_iommu*,int ) ;
 int iommu_write_reg (struct omap_iommu*,int ,int ) ;

__attribute__((used)) static u32 iommu_report_fault(struct omap_iommu *obj, u32 *da)
{
 u32 status, fault_addr;

 status = iommu_read_reg(obj, MMU_IRQSTATUS);
 status &= MMU_IRQ_MASK;
 if (!status) {
  *da = 0;
  return 0;
 }

 fault_addr = iommu_read_reg(obj, MMU_FAULT_AD);
 *da = fault_addr;

 iommu_write_reg(obj, status, MMU_IRQSTATUS);

 return status;
}
