
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct intel_context {TYPE_1__* state; } ;
struct TYPE_2__ {int obj; } ;


 int i915_gem_object_put (int ) ;

__attribute__((used)) static void __ring_context_fini(struct intel_context *ce)
{
 i915_gem_object_put(ce->state->obj);
}
