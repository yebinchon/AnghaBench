
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int slab_priorities; int slab_dependencies; } ;


 TYPE_1__ global ;
 int kmem_cache_destroy (int ) ;

__attribute__((used)) static void i915_global_scheduler_exit(void)
{
 kmem_cache_destroy(global.slab_dependencies);
 kmem_cache_destroy(global.slab_priorities);
}
