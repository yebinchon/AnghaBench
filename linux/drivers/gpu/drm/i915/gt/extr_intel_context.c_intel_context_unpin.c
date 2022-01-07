
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct intel_context {int pin_mutex; int gem_context; TYPE_3__* ops; TYPE_2__* timeline; TYPE_1__* engine; int pin_count; } ;
struct TYPE_6__ {int (* unpin ) (struct intel_context*) ;} ;
struct TYPE_5__ {int fence_context; } ;
struct TYPE_4__ {int name; } ;


 int GEM_TRACE (char*,int ,int ) ;
 int SINGLE_DEPTH_NESTING ;
 int atomic_add_unless (int *,int,int) ;
 int atomic_dec_and_test (int *) ;
 int i915_gem_context_put (int ) ;
 int intel_context_active_release (struct intel_context*) ;
 int intel_context_get (struct intel_context*) ;
 int intel_context_put (struct intel_context*) ;
 scalar_t__ likely (int ) ;
 int mutex_lock_nested (int *,int ) ;
 int mutex_unlock (int *) ;
 int stub1 (struct intel_context*) ;

void intel_context_unpin(struct intel_context *ce)
{
 if (likely(atomic_add_unless(&ce->pin_count, -1, 1)))
  return;


 intel_context_get(ce);
 mutex_lock_nested(&ce->pin_mutex, SINGLE_DEPTH_NESTING);

 if (likely(atomic_dec_and_test(&ce->pin_count))) {
  GEM_TRACE("%s context:%llx retire\n",
     ce->engine->name, ce->timeline->fence_context);

  ce->ops->unpin(ce);

  i915_gem_context_put(ce->gem_context);
  intel_context_active_release(ce);
 }

 mutex_unlock(&ce->pin_mutex);
 intel_context_put(ce);
}
