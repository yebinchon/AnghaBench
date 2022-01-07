
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct i915_priolist {int dummy; } ;
struct TYPE_2__ {int slab_priorities; } ;


 TYPE_1__ global ;
 int kmem_cache_free (int ,struct i915_priolist*) ;

void __i915_priolist_free(struct i915_priolist *p)
{
 kmem_cache_free(global.slab_priorities, p);
}
