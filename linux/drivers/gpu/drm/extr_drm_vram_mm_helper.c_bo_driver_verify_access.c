
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ttm_buffer_object {int bdev; } ;
struct file {int dummy; } ;
struct drm_vram_mm {TYPE_1__* funcs; } ;
struct TYPE_2__ {int (* verify_access ) (struct ttm_buffer_object*,struct file*) ;} ;


 struct drm_vram_mm* drm_vram_mm_of_bdev (int ) ;
 int stub1 (struct ttm_buffer_object*,struct file*) ;

__attribute__((used)) static int bo_driver_verify_access(struct ttm_buffer_object *bo,
       struct file *filp)
{
 struct drm_vram_mm *vmm = drm_vram_mm_of_bdev(bo->bdev);

 if (!vmm->funcs || !vmm->funcs->verify_access)
  return 0;
 return vmm->funcs->verify_access(bo, filp);
}
