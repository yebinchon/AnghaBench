
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u32 ;
struct intel_engine_cs {int (* emit_init_breadcrumb ) (struct i915_vma*) ;int (* emit_bb_start ) (struct i915_vma*,int ,int ,int ) ;int gt; } ;
struct intel_context {TYPE_4__* vm; struct intel_engine_cs* engine; } ;
struct igt_spinner {scalar_t__ gt; int * batch; int hws; int obj; } ;
struct TYPE_7__ {int start; } ;
struct TYPE_5__ {int seqno; } ;
struct i915_vma {TYPE_3__ node; TYPE_2__* timeline; TYPE_1__ fence; } ;
struct i915_request {TYPE_3__ node; TYPE_2__* timeline; TYPE_1__ fence; } ;
struct TYPE_8__ {scalar_t__ gt; } ;
struct TYPE_6__ {scalar_t__ has_initial_breadcrumb; } ;


 struct i915_vma* ERR_CAST (struct i915_vma*) ;
 struct i915_vma* ERR_PTR (int) ;
 int GEM_BUG_ON (int) ;
 scalar_t__ IS_ERR (struct i915_vma*) ;
 int MI_BATCH_BUFFER_END ;
 int MI_BATCH_BUFFER_START ;
 int MI_STORE_DWORD_IMM_GEN4 ;
 int PAGE_SIZE ;
 int PIN_USER ;
 int PTR_ERR (struct i915_vma*) ;
 int hws_address (struct i915_vma*,struct i915_vma*) ;
 int i915_request_add (struct i915_vma*) ;
 int i915_request_skip (struct i915_vma*,int) ;
 struct i915_vma* i915_vma_instance (int ,TYPE_4__*,int *) ;
 int i915_vma_pin (struct i915_vma*,int ,int ,int ) ;
 int i915_vma_unpin (struct i915_vma*) ;
 struct i915_vma* intel_context_create_request (struct intel_context*) ;
 int intel_gt_chipset_flush (int ) ;
 void* lower_32_bits (int ) ;
 int move_to_active (struct i915_vma*,struct i915_vma*,int ) ;
 int stub1 (struct i915_vma*) ;
 int stub2 (struct i915_vma*,int ,int ,int ) ;
 void* upper_32_bits (int ) ;

struct i915_request *
igt_spinner_create_request(struct igt_spinner *spin,
      struct intel_context *ce,
      u32 arbitration_command)
{
 struct intel_engine_cs *engine = ce->engine;
 struct i915_request *rq = ((void*)0);
 struct i915_vma *hws, *vma;
 u32 *batch;
 int err;

 GEM_BUG_ON(spin->gt != ce->vm->gt);

 vma = i915_vma_instance(spin->obj, ce->vm, ((void*)0));
 if (IS_ERR(vma))
  return ERR_CAST(vma);

 hws = i915_vma_instance(spin->hws, ce->vm, ((void*)0));
 if (IS_ERR(hws))
  return ERR_CAST(hws);

 err = i915_vma_pin(vma, 0, 0, PIN_USER);
 if (err)
  return ERR_PTR(err);

 err = i915_vma_pin(hws, 0, 0, PIN_USER);
 if (err)
  goto unpin_vma;

 rq = intel_context_create_request(ce);
 if (IS_ERR(rq)) {
  err = PTR_ERR(rq);
  goto unpin_hws;
 }

 err = move_to_active(vma, rq, 0);
 if (err)
  goto cancel_rq;

 err = move_to_active(hws, rq, 0);
 if (err)
  goto cancel_rq;

 batch = spin->batch;

 *batch++ = MI_STORE_DWORD_IMM_GEN4;
 *batch++ = lower_32_bits(hws_address(hws, rq));
 *batch++ = upper_32_bits(hws_address(hws, rq));
 *batch++ = rq->fence.seqno;

 *batch++ = arbitration_command;

 *batch++ = MI_BATCH_BUFFER_START | 1 << 8 | 1;
 *batch++ = lower_32_bits(vma->node.start);
 *batch++ = upper_32_bits(vma->node.start);
 *batch++ = MI_BATCH_BUFFER_END;

 intel_gt_chipset_flush(engine->gt);

 if (engine->emit_init_breadcrumb &&
     rq->timeline->has_initial_breadcrumb) {
  err = engine->emit_init_breadcrumb(rq);
  if (err)
   goto cancel_rq;
 }

 err = engine->emit_bb_start(rq, vma->node.start, PAGE_SIZE, 0);

cancel_rq:
 if (err) {
  i915_request_skip(rq, err);
  i915_request_add(rq);
 }
unpin_hws:
 i915_vma_unpin(hws);
unpin_vma:
 i915_vma_unpin(vma);
 return err ? ERR_PTR(err) : rq;
}
