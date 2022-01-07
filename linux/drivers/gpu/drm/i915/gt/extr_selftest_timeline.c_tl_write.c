
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct intel_timeline {int hwsp_offset; TYPE_3__* gt; } ;
struct intel_engine_cs {int kernel_context; } ;
struct i915_request {int dummy; } ;
struct TYPE_6__ {TYPE_2__* i915; } ;
struct TYPE_4__ {int struct_mutex; } ;
struct TYPE_5__ {TYPE_1__ drm; } ;


 struct i915_request* ERR_PTR (int) ;
 scalar_t__ IS_ERR (struct i915_request*) ;
 int emit_ggtt_store_dw (struct i915_request*,int ,int ) ;
 int i915_request_add (struct i915_request*) ;
 struct i915_request* i915_request_create (int ) ;
 int intel_timeline_pin (struct intel_timeline*) ;
 int intel_timeline_unpin (struct intel_timeline*) ;
 int lockdep_assert_held (int *) ;
 int pr_err (char*) ;

__attribute__((used)) static struct i915_request *
tl_write(struct intel_timeline *tl, struct intel_engine_cs *engine, u32 value)
{
 struct i915_request *rq;
 int err;

 lockdep_assert_held(&tl->gt->i915->drm.struct_mutex);

 err = intel_timeline_pin(tl);
 if (err) {
  rq = ERR_PTR(err);
  goto out;
 }

 rq = i915_request_create(engine->kernel_context);
 if (IS_ERR(rq))
  goto out_unpin;

 err = emit_ggtt_store_dw(rq, tl->hwsp_offset, value);
 i915_request_add(rq);
 if (err)
  rq = ERR_PTR(err);

out_unpin:
 intel_timeline_unpin(tl);
out:
 if (IS_ERR(rq))
  pr_err("Failed to write to timeline!\n");
 return rq;
}
