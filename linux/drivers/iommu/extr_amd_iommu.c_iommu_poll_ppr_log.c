
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long u64 ;
typedef int u32 ;
struct amd_iommu {scalar_t__ mmio_base; int * ppr_log; } ;


 int LOOP_TIMEOUT ;
 scalar_t__ MMIO_PPR_HEAD_OFFSET ;
 scalar_t__ MMIO_PPR_TAIL_OFFSET ;
 int PPR_ENTRY_SIZE ;
 int PPR_LOG_SIZE ;
 scalar_t__ PPR_REQ_TYPE (unsigned long volatile) ;
 int iommu_handle_ppr_entry (struct amd_iommu*,unsigned long*) ;
 int readl (scalar_t__) ;
 int udelay (int) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static void iommu_poll_ppr_log(struct amd_iommu *iommu)
{
 u32 head, tail;

 if (iommu->ppr_log == ((void*)0))
  return;

 head = readl(iommu->mmio_base + MMIO_PPR_HEAD_OFFSET);
 tail = readl(iommu->mmio_base + MMIO_PPR_TAIL_OFFSET);

 while (head != tail) {
  volatile u64 *raw;
  u64 entry[2];
  int i;

  raw = (u64 *)(iommu->ppr_log + head);






  for (i = 0; i < LOOP_TIMEOUT; ++i) {
   if (PPR_REQ_TYPE(raw[0]) != 0)
    break;
   udelay(1);
  }


  entry[0] = raw[0];
  entry[1] = raw[1];





  raw[0] = raw[1] = 0UL;


  head = (head + PPR_ENTRY_SIZE) % PPR_LOG_SIZE;
  writel(head, iommu->mmio_base + MMIO_PPR_HEAD_OFFSET);


  iommu_handle_ppr_entry(iommu, entry);


  head = readl(iommu->mmio_base + MMIO_PPR_HEAD_OFFSET);
  tail = readl(iommu->mmio_base + MMIO_PPR_TAIL_OFFSET);
 }
}
