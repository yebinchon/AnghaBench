
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int hw_ida; int hw_id_list; } ;
struct TYPE_3__ {int struct_mutex; } ;
struct drm_i915_private {TYPE_2__ contexts; int kernel_context; TYPE_1__ drm; } ;


 int GEM_BUG_ON (int) ;
 int destroy_kernel_context (int *) ;
 int ida_destroy (int *) ;
 int list_empty (int *) ;
 int lockdep_assert_held (int *) ;

void i915_gem_contexts_fini(struct drm_i915_private *i915)
{
 lockdep_assert_held(&i915->drm.struct_mutex);

 destroy_kernel_context(&i915->kernel_context);


 GEM_BUG_ON(!list_empty(&i915->contexts.hw_id_list));
 ida_destroy(&i915->contexts.hw_ida);
}
