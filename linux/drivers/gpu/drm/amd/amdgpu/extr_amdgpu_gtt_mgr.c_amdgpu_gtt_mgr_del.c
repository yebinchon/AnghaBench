
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ttm_mem_type_manager {struct amdgpu_gtt_mgr* priv; } ;
struct ttm_mem_reg {struct amdgpu_gtt_node* mm_node; int num_pages; } ;
struct TYPE_2__ {scalar_t__ start; } ;
struct amdgpu_gtt_node {TYPE_1__ node; } ;
struct amdgpu_gtt_mgr {int available; int lock; } ;


 scalar_t__ AMDGPU_BO_INVALID_OFFSET ;
 int atomic64_add (int ,int *) ;
 int drm_mm_remove_node (TYPE_1__*) ;
 int kfree (struct amdgpu_gtt_node*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void amdgpu_gtt_mgr_del(struct ttm_mem_type_manager *man,
          struct ttm_mem_reg *mem)
{
 struct amdgpu_gtt_mgr *mgr = man->priv;
 struct amdgpu_gtt_node *node = mem->mm_node;

 if (!node)
  return;

 spin_lock(&mgr->lock);
 if (node->node.start != AMDGPU_BO_INVALID_OFFSET)
  drm_mm_remove_node(&node->node);
 spin_unlock(&mgr->lock);
 atomic64_add(mem->num_pages, &mgr->available);

 kfree(node);
 mem->mm_node = ((void*)0);
}
