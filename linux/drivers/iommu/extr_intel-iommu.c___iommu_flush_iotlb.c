
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u16 ;
struct intel_iommu {int register_lock; scalar_t__ reg; int cap; int ecap; } ;


 int BUG () ;
 int const DMA_TLB_DID (int ) ;


 scalar_t__ DMA_TLB_IAIG (int) ;
 scalar_t__ DMA_TLB_IIRG (int) ;
 int const DMA_TLB_IVT ;

 int DMA_TLB_READ_DRAIN ;
 int DMA_TLB_WRITE_DRAIN ;
 int IOMMU_WAIT_OP (struct intel_iommu*,int,int ,int,int) ;
 scalar_t__ cap_read_drain (int ) ;
 scalar_t__ cap_write_drain (int ) ;
 int dmar_readq ;
 int dmar_writeq (scalar_t__,int) ;
 int ecap_iotlb_offset (int ) ;
 int pr_debug (char*,unsigned long long,unsigned long long) ;
 int pr_err (char*) ;
 int raw_spin_lock_irqsave (int *,unsigned long) ;
 int raw_spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void __iommu_flush_iotlb(struct intel_iommu *iommu, u16 did,
    u64 addr, unsigned int size_order, u64 type)
{
 int tlb_offset = ecap_iotlb_offset(iommu->ecap);
 u64 val = 0, val_iva = 0;
 unsigned long flag;

 switch (type) {
 case 129:

  val = 129|DMA_TLB_IVT;
  break;
 case 130:
  val = 130|DMA_TLB_IVT|DMA_TLB_DID(did);
  break;
 case 128:
  val = 128|DMA_TLB_IVT|DMA_TLB_DID(did);

  val_iva = size_order | addr;
  break;
 default:
  BUG();
 }
 if (cap_write_drain(iommu->cap))
  val |= DMA_TLB_WRITE_DRAIN;

 raw_spin_lock_irqsave(&iommu->register_lock, flag);

 if (val_iva)
  dmar_writeq(iommu->reg + tlb_offset, val_iva);
 dmar_writeq(iommu->reg + tlb_offset + 8, val);


 IOMMU_WAIT_OP(iommu, tlb_offset + 8,
  dmar_readq, (!(val & DMA_TLB_IVT)), val);

 raw_spin_unlock_irqrestore(&iommu->register_lock, flag);


 if (DMA_TLB_IAIG(val) == 0)
  pr_err("Flush IOTLB failed\n");
 if (DMA_TLB_IAIG(val) != DMA_TLB_IIRG(type))
  pr_debug("TLB flush request %Lx, actual %Lx\n",
   (unsigned long long)DMA_TLB_IIRG(type),
   (unsigned long long)DMA_TLB_IAIG(val));
}
