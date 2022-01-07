
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct i915_vma {int dummy; } ;
struct TYPE_2__ {int slab_vmas; } ;


 int GFP_KERNEL ;
 TYPE_1__ global ;
 struct i915_vma* kmem_cache_zalloc (int ,int ) ;

struct i915_vma *i915_vma_alloc(void)
{
 return kmem_cache_zalloc(global.slab_vmas, GFP_KERNEL);
}
