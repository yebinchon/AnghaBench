
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct i915_dependency {int dummy; } ;
struct TYPE_2__ {int slab_dependencies; } ;


 TYPE_1__ global ;
 int kmem_cache_free (int ,struct i915_dependency*) ;

__attribute__((used)) static void
i915_dependency_free(struct i915_dependency *dep)
{
 kmem_cache_free(global.slab_dependencies, dep);
}
