
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct kvmgt_guest_info {TYPE_2__* vgpu; } ;
struct gvt_dma {int ref; } ;
typedef int dma_addr_t ;
struct TYPE_3__ {int cache_lock; } ;
struct TYPE_4__ {TYPE_1__ vdev; } ;


 struct gvt_dma* __gvt_cache_find_dma_addr (TYPE_2__*,int ) ;
 int __gvt_dma_release ;
 int handle_valid (unsigned long) ;
 int kref_put (int *,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void kvmgt_dma_unmap_guest_page(unsigned long handle, dma_addr_t dma_addr)
{
 struct kvmgt_guest_info *info;
 struct gvt_dma *entry;

 if (!handle_valid(handle))
  return;

 info = (struct kvmgt_guest_info *)handle;

 mutex_lock(&info->vgpu->vdev.cache_lock);
 entry = __gvt_cache_find_dma_addr(info->vgpu, dma_addr);
 if (entry)
  kref_put(&entry->ref, __gvt_dma_release);
 mutex_unlock(&info->vgpu->vdev.cache_lock);
}
