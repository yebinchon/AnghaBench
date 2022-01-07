
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct amd_iommu {scalar_t__ mmio_base; scalar_t__ evt_buf; } ;


 int EVENT_ENTRY_SIZE ;
 int EVT_BUFFER_SIZE ;
 scalar_t__ MMIO_EVT_HEAD_OFFSET ;
 scalar_t__ MMIO_EVT_TAIL_OFFSET ;
 int iommu_print_event (struct amd_iommu*,scalar_t__) ;
 int readl (scalar_t__) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static void iommu_poll_events(struct amd_iommu *iommu)
{
 u32 head, tail;

 head = readl(iommu->mmio_base + MMIO_EVT_HEAD_OFFSET);
 tail = readl(iommu->mmio_base + MMIO_EVT_TAIL_OFFSET);

 while (head != tail) {
  iommu_print_event(iommu, iommu->evt_buf + head);
  head = (head + EVENT_ENTRY_SIZE) % EVT_BUFFER_SIZE;
 }

 writel(head, iommu->mmio_base + MMIO_EVT_HEAD_OFFSET);
}
