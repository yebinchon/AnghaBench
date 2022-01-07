
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct i915_request {int reserved_space; TYPE_1__* engine; TYPE_2__* hw_context; } ;
struct TYPE_4__ {int vm; } ;
struct TYPE_3__ {int (* emit_flush ) (struct i915_request*,int ) ;} ;


 int EMIT_INVALIDATE ;
 scalar_t__ EXECLISTS_REQUEST_SIZE ;
 int GEM_BUG_ON (int) ;
 int emit_pdps (struct i915_request*) ;
 scalar_t__ i915_vm_is_4lvl (int ) ;
 int intel_context_is_pinned (TYPE_2__*) ;
 int stub1 (struct i915_request*,int ) ;

__attribute__((used)) static int execlists_request_alloc(struct i915_request *request)
{
 int ret;

 GEM_BUG_ON(!intel_context_is_pinned(request->hw_context));






 request->reserved_space += EXECLISTS_REQUEST_SIZE;
 if (i915_vm_is_4lvl(request->hw_context->vm))
  ret = request->engine->emit_flush(request, EMIT_INVALIDATE);
 else
  ret = emit_pdps(request);
 if (ret)
  return ret;

 request->reserved_space -= EXECLISTS_REQUEST_SIZE;
 return 0;
}
