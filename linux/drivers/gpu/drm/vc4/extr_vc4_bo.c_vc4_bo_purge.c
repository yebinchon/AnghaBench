
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int * vaddr; int paddr; } ;
struct vc4_bo {scalar_t__ madv; TYPE_2__ base; int madv_lock; } ;
struct drm_gem_object {int size; int vma_node; struct drm_device* dev; } ;
struct drm_device {int dev; TYPE_1__* anon_inode; } ;
struct TYPE_3__ {int i_mapping; } ;


 scalar_t__ VC4_MADV_DONTNEED ;
 int WARN_ON (int) ;
 scalar_t__ __VC4_MADV_PURGED ;
 int dma_free_wc (int ,int ,int *,int ) ;
 int drm_vma_node_unmap (int *,int ) ;
 int mutex_is_locked (int *) ;
 struct vc4_bo* to_vc4_bo (struct drm_gem_object*) ;

__attribute__((used)) static void vc4_bo_purge(struct drm_gem_object *obj)
{
 struct vc4_bo *bo = to_vc4_bo(obj);
 struct drm_device *dev = obj->dev;

 WARN_ON(!mutex_is_locked(&bo->madv_lock));
 WARN_ON(bo->madv != VC4_MADV_DONTNEED);

 drm_vma_node_unmap(&obj->vma_node, dev->anon_inode->i_mapping);

 dma_free_wc(dev->dev, obj->size, bo->base.vaddr, bo->base.paddr);
 bo->base.vaddr = ((void*)0);
 bo->madv = __VC4_MADV_PURGED;
}
