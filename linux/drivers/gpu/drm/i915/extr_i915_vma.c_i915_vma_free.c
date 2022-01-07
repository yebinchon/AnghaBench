
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct i915_vma {int dummy; } ;
struct TYPE_2__ {int slab_vmas; } ;


 TYPE_1__ global ;
 void kmem_cache_free (int ,struct i915_vma*) ;

void i915_vma_free(struct i915_vma *vma)
{
 return kmem_cache_free(global.slab_vmas, vma);
}
