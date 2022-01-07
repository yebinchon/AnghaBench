
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct i915_request {TYPE_1__* engine; } ;
struct TYPE_2__ {int context_status_notifier; } ;


 int CONFIG_DRM_I915_GVT ;
 int IS_ENABLED (int ) ;
 int atomic_notifier_call_chain (int *,unsigned long,struct i915_request*) ;

__attribute__((used)) static inline void
execlists_context_status_change(struct i915_request *rq, unsigned long status)
{




 if (!IS_ENABLED(CONFIG_DRM_I915_GVT))
  return;

 atomic_notifier_call_chain(&rq->engine->context_status_notifier,
       status, rq);
}
