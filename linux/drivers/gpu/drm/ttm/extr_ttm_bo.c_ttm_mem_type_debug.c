
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ttm_mem_type_manager {TYPE_1__* func; int default_caching; int available_caching; int size; int gpu_offset; int flags; int use_type; int has_type; } ;
struct ttm_bo_device {struct ttm_mem_type_manager* man; } ;
struct drm_printer {int dummy; } ;
struct TYPE_2__ {int (* debug ) (struct ttm_mem_type_manager*,struct drm_printer*) ;} ;


 int TTM_PL_SYSTEM ;
 int drm_printf (struct drm_printer*,char*,int ) ;
 int stub1 (struct ttm_mem_type_manager*,struct drm_printer*) ;

__attribute__((used)) static void ttm_mem_type_debug(struct ttm_bo_device *bdev, struct drm_printer *p,
          int mem_type)
{
 struct ttm_mem_type_manager *man = &bdev->man[mem_type];

 drm_printf(p, "    has_type: %d\n", man->has_type);
 drm_printf(p, "    use_type: %d\n", man->use_type);
 drm_printf(p, "    flags: 0x%08X\n", man->flags);
 drm_printf(p, "    gpu_offset: 0x%08llX\n", man->gpu_offset);
 drm_printf(p, "    size: %llu\n", man->size);
 drm_printf(p, "    available_caching: 0x%08X\n", man->available_caching);
 drm_printf(p, "    default_caching: 0x%08X\n", man->default_caching);
 if (mem_type != TTM_PL_SYSTEM)
  (*man->func->debug)(man, p);
}
