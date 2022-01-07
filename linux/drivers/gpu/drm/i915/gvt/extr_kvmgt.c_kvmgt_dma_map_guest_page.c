
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct kvmgt_guest_info {struct intel_vgpu* vgpu; } ;
struct TYPE_2__ {int cache_lock; } ;
struct intel_vgpu {TYPE_1__ vdev; } ;
struct gvt_dma {unsigned long size; int dma_addr; int ref; } ;
typedef int dma_addr_t ;


 int EINVAL ;
 int __gvt_cache_add (struct intel_vgpu*,unsigned long,int ,unsigned long) ;
 struct gvt_dma* __gvt_cache_find_gfn (struct intel_vgpu*,unsigned long) ;
 int __gvt_cache_remove_entry (struct intel_vgpu*,struct gvt_dma*) ;
 int gvt_dma_map_page (struct intel_vgpu*,unsigned long,int *,unsigned long) ;
 int gvt_dma_unmap_page (struct intel_vgpu*,unsigned long,int ,unsigned long) ;
 int handle_valid (unsigned long) ;
 int kref_get (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int kvmgt_dma_map_guest_page(unsigned long handle, unsigned long gfn,
  unsigned long size, dma_addr_t *dma_addr)
{
 struct kvmgt_guest_info *info;
 struct intel_vgpu *vgpu;
 struct gvt_dma *entry;
 int ret;

 if (!handle_valid(handle))
  return -EINVAL;

 info = (struct kvmgt_guest_info *)handle;
 vgpu = info->vgpu;

 mutex_lock(&info->vgpu->vdev.cache_lock);

 entry = __gvt_cache_find_gfn(info->vgpu, gfn);
 if (!entry) {
  ret = gvt_dma_map_page(vgpu, gfn, dma_addr, size);
  if (ret)
   goto err_unlock;

  ret = __gvt_cache_add(info->vgpu, gfn, *dma_addr, size);
  if (ret)
   goto err_unmap;
 } else if (entry->size != size) {

  gvt_dma_unmap_page(vgpu, gfn, entry->dma_addr, entry->size);
  __gvt_cache_remove_entry(vgpu, entry);

  ret = gvt_dma_map_page(vgpu, gfn, dma_addr, size);
  if (ret)
   goto err_unlock;

  ret = __gvt_cache_add(info->vgpu, gfn, *dma_addr, size);
  if (ret)
   goto err_unmap;
 } else {
  kref_get(&entry->ref);
  *dma_addr = entry->dma_addr;
 }

 mutex_unlock(&info->vgpu->vdev.cache_lock);
 return 0;

err_unmap:
 gvt_dma_unmap_page(vgpu, gfn, *dma_addr, size);
err_unlock:
 mutex_unlock(&info->vgpu->vdev.cache_lock);
 return ret;
}
