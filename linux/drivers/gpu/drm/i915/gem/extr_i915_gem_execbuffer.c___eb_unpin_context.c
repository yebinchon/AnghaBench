
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct intel_context {int pin_count; } ;
struct i915_execbuffer {TYPE_2__* i915; } ;
struct TYPE_3__ {int struct_mutex; } ;
struct TYPE_4__ {TYPE_1__ drm; } ;


 int atomic_add_unless (int *,int,int) ;
 int intel_context_unpin (struct intel_context*) ;
 scalar_t__ likely (int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void
__eb_unpin_context(struct i915_execbuffer *eb, struct intel_context *ce)
{
 if (likely(atomic_add_unless(&ce->pin_count, -1, 1)))
  return;

 mutex_lock(&eb->i915->drm.struct_mutex);
 intel_context_unpin(ce);
 mutex_unlock(&eb->i915->drm.struct_mutex);
}
