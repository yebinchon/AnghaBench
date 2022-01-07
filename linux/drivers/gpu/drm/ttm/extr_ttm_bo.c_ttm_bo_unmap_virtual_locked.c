
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int vma_node; } ;
struct ttm_buffer_object {TYPE_1__ base; struct ttm_bo_device* bdev; } ;
struct ttm_bo_device {int dev_mapping; } ;


 int drm_vma_node_unmap (int *,int ) ;
 int ttm_mem_io_free_vm (struct ttm_buffer_object*) ;

void ttm_bo_unmap_virtual_locked(struct ttm_buffer_object *bo)
{
 struct ttm_bo_device *bdev = bo->bdev;

 drm_vma_node_unmap(&bo->base.vma_node, bdev->dev_mapping);
 ttm_mem_io_free_vm(bo);
}
