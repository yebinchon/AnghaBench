
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * mm; } ;
struct etnaviv_vram_mapping {int mmu_node; TYPE_1__ vram_node; int use; } ;
struct etnaviv_iommu_context {int lock; int flush_seq; int mm; } ;


 int WARN_ON (int ) ;
 int etnaviv_iommu_remove_mapping (struct etnaviv_iommu_context*,struct etnaviv_vram_mapping*) ;
 int list_del (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

void etnaviv_iommu_unmap_gem(struct etnaviv_iommu_context *context,
 struct etnaviv_vram_mapping *mapping)
{
 WARN_ON(mapping->use);

 mutex_lock(&context->lock);


 if (mapping->vram_node.mm == &context->mm)
  etnaviv_iommu_remove_mapping(context, mapping);

 list_del(&mapping->mmu_node);
 context->flush_seq++;
 mutex_unlock(&context->lock);
}
