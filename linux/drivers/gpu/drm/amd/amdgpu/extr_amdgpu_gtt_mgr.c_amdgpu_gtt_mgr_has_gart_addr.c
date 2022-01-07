
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ttm_mem_reg {struct amdgpu_gtt_node* mm_node; } ;
struct TYPE_2__ {scalar_t__ start; } ;
struct amdgpu_gtt_node {TYPE_1__ node; } ;


 scalar_t__ AMDGPU_BO_INVALID_OFFSET ;

bool amdgpu_gtt_mgr_has_gart_addr(struct ttm_mem_reg *mem)
{
 struct amdgpu_gtt_node *node = mem->mm_node;

 return (node->node.start != AMDGPU_BO_INVALID_OFFSET);
}
