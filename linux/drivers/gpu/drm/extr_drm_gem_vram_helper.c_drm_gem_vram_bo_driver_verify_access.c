
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ttm_buffer_object {int dummy; } ;
struct file {int private_data; } ;
struct TYPE_3__ {int vma_node; } ;
struct TYPE_4__ {TYPE_1__ base; } ;
struct drm_gem_vram_object {TYPE_2__ bo; } ;


 struct drm_gem_vram_object* drm_gem_vram_of_bo (struct ttm_buffer_object*) ;
 int drm_vma_node_verify_access (int *,int ) ;

int drm_gem_vram_bo_driver_verify_access(struct ttm_buffer_object *bo,
      struct file *filp)
{
 struct drm_gem_vram_object *gbo = drm_gem_vram_of_bo(bo);

 return drm_vma_node_verify_access(&gbo->bo.base.vma_node,
       filp->private_data);
}
