
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int nr_cache_entries; int dma_addr_cache; int gfn_cache; } ;
struct intel_vgpu {TYPE_1__ vdev; } ;
struct gvt_dma {int dma_addr_node; int gfn_node; } ;


 int kfree (struct gvt_dma*) ;
 int rb_erase (int *,int *) ;

__attribute__((used)) static void __gvt_cache_remove_entry(struct intel_vgpu *vgpu,
    struct gvt_dma *entry)
{
 rb_erase(&entry->gfn_node, &vgpu->vdev.gfn_cache);
 rb_erase(&entry->dma_addr_node, &vgpu->vdev.dma_addr_cache);
 kfree(entry);
 vgpu->vdev.nr_cache_entries--;
}
