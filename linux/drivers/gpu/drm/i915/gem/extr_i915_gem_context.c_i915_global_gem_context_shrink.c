
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int slab_luts; } ;


 TYPE_1__ global ;
 int kmem_cache_shrink (int ) ;

__attribute__((used)) static void i915_global_gem_context_shrink(void)
{
 kmem_cache_shrink(global.slab_luts);
}
