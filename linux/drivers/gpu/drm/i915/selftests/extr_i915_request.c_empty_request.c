
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct intel_engine_cs {int (* emit_bb_start ) (struct i915_request*,int ,int ,int ) ;int kernel_context; } ;
struct TYPE_2__ {int size; int start; } ;
struct i915_vma {TYPE_1__ node; } ;
struct i915_request {int dummy; } ;


 struct i915_request* ERR_PTR (int) ;
 int I915_DISPATCH_SECURE ;
 scalar_t__ IS_ERR (struct i915_request*) ;
 int i915_request_add (struct i915_request*) ;
 struct i915_request* i915_request_create (int ) ;
 int stub1 (struct i915_request*,int ,int ,int ) ;

__attribute__((used)) static struct i915_request *
empty_request(struct intel_engine_cs *engine,
       struct i915_vma *batch)
{
 struct i915_request *request;
 int err;

 request = i915_request_create(engine->kernel_context);
 if (IS_ERR(request))
  return request;

 err = engine->emit_bb_start(request,
        batch->node.start,
        batch->node.size,
        I915_DISPATCH_SECURE);
 if (err)
  goto out_request;

out_request:
 i915_request_add(request);
 return err ? ERR_PTR(err) : request;
}
