
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct intel_iommu {int lock; } ;
struct context_entry {int dummy; } ;


 int context_present (struct context_entry*) ;
 struct context_entry* iommu_context_addr (struct intel_iommu*,int ,int ,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int device_context_mapped(struct intel_iommu *iommu, u8 bus, u8 devfn)
{
 struct context_entry *context;
 int ret = 0;
 unsigned long flags;

 spin_lock_irqsave(&iommu->lock, flags);
 context = iommu_context_addr(iommu, bus, devfn, 0);
 if (context)
  ret = context_present(context);
 spin_unlock_irqrestore(&iommu->lock, flags);
 return ret;
}
