
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct amd_iommu {scalar_t__ mmio_base; } ;
typedef int irqreturn_t ;


 int AMD_IOMMU_INT_MASK ;
 int IRQ_HANDLED ;
 int MMIO_STATUS_EVT_INT_MASK ;
 int MMIO_STATUS_GALOG_INT_MASK ;
 scalar_t__ MMIO_STATUS_OFFSET ;
 int MMIO_STATUS_PPR_INT_MASK ;
 int iommu_poll_events (struct amd_iommu*) ;
 int iommu_poll_ga_log (struct amd_iommu*) ;
 int iommu_poll_ppr_log (struct amd_iommu*) ;
 int pr_devel (char*) ;
 int readl (scalar_t__) ;
 int writel (int,scalar_t__) ;

irqreturn_t amd_iommu_int_thread(int irq, void *data)
{
 struct amd_iommu *iommu = (struct amd_iommu *) data;
 u32 status = readl(iommu->mmio_base + MMIO_STATUS_OFFSET);

 while (status & AMD_IOMMU_INT_MASK) {

  writel(AMD_IOMMU_INT_MASK,
   iommu->mmio_base + MMIO_STATUS_OFFSET);

  if (status & MMIO_STATUS_EVT_INT_MASK) {
   pr_devel("Processing IOMMU Event Log\n");
   iommu_poll_events(iommu);
  }

  if (status & MMIO_STATUS_PPR_INT_MASK) {
   pr_devel("Processing IOMMU PPR Log\n");
   iommu_poll_ppr_log(iommu);
  }
  status = readl(iommu->mmio_base + MMIO_STATUS_OFFSET);
 }
 return IRQ_HANDLED;
}
