
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct ttm_mem_type_manager {int size; struct amdgpu_gtt_mgr* priv; } ;
struct drm_printer {int dummy; } ;
struct amdgpu_gtt_mgr {int available; int lock; int mm; } ;


 int amdgpu_gtt_mgr_usage (struct ttm_mem_type_manager*) ;
 scalar_t__ atomic64_read (int *) ;
 int drm_mm_print (int *,struct drm_printer*) ;
 int drm_printf (struct drm_printer*,char*,int ,int ,int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void amdgpu_gtt_mgr_debug(struct ttm_mem_type_manager *man,
     struct drm_printer *printer)
{
 struct amdgpu_gtt_mgr *mgr = man->priv;

 spin_lock(&mgr->lock);
 drm_mm_print(&mgr->mm, printer);
 spin_unlock(&mgr->lock);

 drm_printf(printer, "man size:%llu pages, gtt available:%lld pages, usage:%lluMB\n",
     man->size, (u64)atomic64_read(&mgr->available),
     amdgpu_gtt_mgr_usage(man) >> 20);
}
