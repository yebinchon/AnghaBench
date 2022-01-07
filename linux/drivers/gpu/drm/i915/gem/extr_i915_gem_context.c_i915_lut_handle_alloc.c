
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct i915_lut_handle {int dummy; } ;
struct TYPE_2__ {int slab_luts; } ;


 int GFP_KERNEL ;
 TYPE_1__ global ;
 struct i915_lut_handle* kmem_cache_alloc (int ,int ) ;

struct i915_lut_handle *i915_lut_handle_alloc(void)
{
 return kmem_cache_alloc(global.slab_luts, GFP_KERNEL);
}
