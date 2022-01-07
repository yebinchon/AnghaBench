
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct i915_lut_handle {int dummy; } ;
struct TYPE_2__ {int slab_luts; } ;


 TYPE_1__ global ;
 void kmem_cache_free (int ,struct i915_lut_handle*) ;

void i915_lut_handle_free(struct i915_lut_handle *lut)
{
 return kmem_cache_free(global.slab_luts, lut);
}
