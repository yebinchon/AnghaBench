
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {unsigned long start; unsigned long last; } ;
struct viommu_mapping {TYPE_1__ iova; int flags; int paddr; } ;
struct viommu_domain {int mappings_lock; int mappings; } ;
typedef int phys_addr_t ;


 int ENOMEM ;
 int GFP_ATOMIC ;
 int interval_tree_insert (TYPE_1__*,int *) ;
 struct viommu_mapping* kzalloc (int,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int viommu_add_mapping(struct viommu_domain *vdomain, unsigned long iova,
         phys_addr_t paddr, size_t size, u32 flags)
{
 unsigned long irqflags;
 struct viommu_mapping *mapping;

 mapping = kzalloc(sizeof(*mapping), GFP_ATOMIC);
 if (!mapping)
  return -ENOMEM;

 mapping->paddr = paddr;
 mapping->iova.start = iova;
 mapping->iova.last = iova + size - 1;
 mapping->flags = flags;

 spin_lock_irqsave(&vdomain->mappings_lock, irqflags);
 interval_tree_insert(&mapping->iova, &vdomain->mappings);
 spin_unlock_irqrestore(&vdomain->mappings_lock, irqflags);

 return 0;
}
