
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u64 ;
typedef int u32 ;
struct i915_gem_context {TYPE_1__* vm; } ;
struct drm_mm_node {scalar_t__ start; scalar_t__ size; } ;
struct TYPE_2__ {int mm; } ;


 int EINVAL ;
 int GEM_BUG_ON (int) ;
 struct drm_mm_node* __drm_mm_interval_first (int *,scalar_t__,scalar_t__) ;
 int lower_32_bits (scalar_t__) ;
 int pr_err (char*,int ,int ) ;
 int upper_32_bits (scalar_t__) ;

__attribute__((used)) static int check_scratch(struct i915_gem_context *ctx, u64 offset)
{
 struct drm_mm_node *node =
  __drm_mm_interval_first(&ctx->vm->mm,
     offset, offset + sizeof(u32) - 1);
 if (!node || node->start > offset)
  return 0;

 GEM_BUG_ON(offset >= node->start + node->size);

 pr_err("Target offset 0x%08x_%08x overlaps with a node in the mm!\n",
        upper_32_bits(offset), lower_32_bits(offset));
 return -EINVAL;
}
