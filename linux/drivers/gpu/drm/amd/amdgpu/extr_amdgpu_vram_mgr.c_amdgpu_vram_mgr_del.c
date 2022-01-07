
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct ttm_mem_type_manager {struct amdgpu_vram_mgr* priv; int bdev; } ;
struct ttm_mem_reg {unsigned int num_pages; struct drm_mm_node* mm_node; } ;
struct drm_mm_node {unsigned int size; } ;
struct amdgpu_vram_mgr {int vis_usage; int usage; int lock; } ;
struct amdgpu_device {int dummy; } ;


 int PAGE_SHIFT ;
 struct amdgpu_device* amdgpu_ttm_adev (int ) ;
 scalar_t__ amdgpu_vram_mgr_vis_size (struct amdgpu_device*,struct drm_mm_node*) ;
 int atomic64_sub (int,int *) ;
 int drm_mm_remove_node (struct drm_mm_node*) ;
 int kvfree (struct drm_mm_node*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void amdgpu_vram_mgr_del(struct ttm_mem_type_manager *man,
    struct ttm_mem_reg *mem)
{
 struct amdgpu_device *adev = amdgpu_ttm_adev(man->bdev);
 struct amdgpu_vram_mgr *mgr = man->priv;
 struct drm_mm_node *nodes = mem->mm_node;
 uint64_t usage = 0, vis_usage = 0;
 unsigned pages = mem->num_pages;

 if (!mem->mm_node)
  return;

 spin_lock(&mgr->lock);
 while (pages) {
  pages -= nodes->size;
  drm_mm_remove_node(nodes);
  usage += nodes->size << PAGE_SHIFT;
  vis_usage += amdgpu_vram_mgr_vis_size(adev, nodes);
  ++nodes;
 }
 spin_unlock(&mgr->lock);

 atomic64_sub(usage, &mgr->usage);
 atomic64_sub(vis_usage, &mgr->vis_usage);

 kvfree(mem->mm_node);
 mem->mm_node = ((void*)0);
}
