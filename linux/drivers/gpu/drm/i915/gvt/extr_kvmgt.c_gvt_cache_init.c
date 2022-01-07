
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int cache_lock; scalar_t__ nr_cache_entries; void* dma_addr_cache; void* gfn_cache; } ;
struct intel_vgpu {TYPE_1__ vdev; } ;


 void* RB_ROOT ;
 int mutex_init (int *) ;

__attribute__((used)) static void gvt_cache_init(struct intel_vgpu *vgpu)
{
 vgpu->vdev.gfn_cache = RB_ROOT;
 vgpu->vdev.dma_addr_cache = RB_ROOT;
 vgpu->vdev.nr_cache_entries = 0;
 mutex_init(&vgpu->vdev.cache_lock);
}
