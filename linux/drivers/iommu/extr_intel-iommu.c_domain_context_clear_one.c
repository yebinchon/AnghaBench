
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct TYPE_2__ {int (* flush_iotlb ) (struct intel_iommu*,int,int ,int ,int ) ;int (* flush_context ) (struct intel_iommu*,int,int,int ,int ) ;} ;
struct intel_iommu {TYPE_1__ flush; int lock; } ;
struct context_entry {int dummy; } ;


 int DMA_CCMD_DEVICE_INVL ;
 int DMA_CCMD_MASK_NOBIT ;
 int DMA_TLB_DSI_FLUSH ;
 int __iommu_flush_cache (struct intel_iommu*,struct context_entry*,int) ;
 int context_clear_entry (struct context_entry*) ;
 int context_domain_id (struct context_entry*) ;
 struct context_entry* iommu_context_addr (struct intel_iommu*,int,int,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (struct intel_iommu*,int,int,int ,int ) ;
 int stub2 (struct intel_iommu*,int,int ,int ,int ) ;

__attribute__((used)) static void domain_context_clear_one(struct intel_iommu *iommu, u8 bus, u8 devfn)
{
 unsigned long flags;
 struct context_entry *context;
 u16 did_old;

 if (!iommu)
  return;

 spin_lock_irqsave(&iommu->lock, flags);
 context = iommu_context_addr(iommu, bus, devfn, 0);
 if (!context) {
  spin_unlock_irqrestore(&iommu->lock, flags);
  return;
 }
 did_old = context_domain_id(context);
 context_clear_entry(context);
 __iommu_flush_cache(iommu, context, sizeof(*context));
 spin_unlock_irqrestore(&iommu->lock, flags);
 iommu->flush.flush_context(iommu,
       did_old,
       (((u16)bus) << 8) | devfn,
       DMA_CCMD_MASK_NOBIT,
       DMA_CCMD_DEVICE_INVL);
 iommu->flush.flush_iotlb(iommu,
     did_old,
     0,
     0,
     DMA_TLB_DSI_FLUSH);
}
