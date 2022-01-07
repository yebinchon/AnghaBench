
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct i915_request {int reserved_space; TYPE_2__* engine; TYPE_1__* timeline; int hw_context; } ;
struct TYPE_4__ {int (* emit_flush ) (struct i915_request*,int ) ;} ;
struct TYPE_3__ {int has_initial_breadcrumb; } ;


 int EMIT_INVALIDATE ;
 int GEM_BUG_ON (int) ;
 scalar_t__ LEGACY_REQUEST_SIZE ;
 int intel_context_is_pinned (int ) ;
 int stub1 (struct i915_request*,int ) ;
 int switch_context (struct i915_request*) ;

__attribute__((used)) static int ring_request_alloc(struct i915_request *request)
{
 int ret;

 GEM_BUG_ON(!intel_context_is_pinned(request->hw_context));
 GEM_BUG_ON(request->timeline->has_initial_breadcrumb);






 request->reserved_space += LEGACY_REQUEST_SIZE;


 ret = request->engine->emit_flush(request, EMIT_INVALIDATE);
 if (ret)
  return ret;

 ret = switch_context(request);
 if (ret)
  return ret;

 request->reserved_space -= LEGACY_REQUEST_SIZE;
 return 0;
}
