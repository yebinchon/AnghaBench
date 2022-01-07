
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ttm_mem_type_manager {int size; struct amdgpu_vram_mgr* priv; } ;
struct drm_printer {int dummy; } ;
struct amdgpu_vram_mgr {int lock; int mm; } ;


 int amdgpu_vram_mgr_usage (struct ttm_mem_type_manager*) ;
 int amdgpu_vram_mgr_vis_usage (struct ttm_mem_type_manager*) ;
 int drm_mm_print (int *,struct drm_printer*) ;
 int drm_printf (struct drm_printer*,char*,int ,int,int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void amdgpu_vram_mgr_debug(struct ttm_mem_type_manager *man,
      struct drm_printer *printer)
{
 struct amdgpu_vram_mgr *mgr = man->priv;

 spin_lock(&mgr->lock);
 drm_mm_print(&mgr->mm, printer);
 spin_unlock(&mgr->lock);

 drm_printf(printer, "man size:%llu pages, ram usage:%lluMB, vis usage:%lluMB\n",
     man->size, amdgpu_vram_mgr_usage(man) >> 20,
     amdgpu_vram_mgr_vis_usage(man) >> 20);
}
