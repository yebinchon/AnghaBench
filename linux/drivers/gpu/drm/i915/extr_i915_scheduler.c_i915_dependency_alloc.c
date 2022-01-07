
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct i915_dependency {int dummy; } ;
struct TYPE_2__ {int slab_dependencies; } ;


 int GFP_KERNEL ;
 TYPE_1__ global ;
 struct i915_dependency* kmem_cache_alloc (int ,int ) ;

__attribute__((used)) static struct i915_dependency *
i915_dependency_alloc(void)
{
 return kmem_cache_alloc(global.slab_dependencies, GFP_KERNEL);
}
