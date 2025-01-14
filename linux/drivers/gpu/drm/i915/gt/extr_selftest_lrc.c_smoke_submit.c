
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct preempt_smoke {int engine; } ;
struct TYPE_6__ {int start; } ;
struct i915_vma {TYPE_3__ node; TYPE_2__* engine; int obj; } ;
struct i915_request {TYPE_3__ node; TYPE_2__* engine; int obj; } ;
struct TYPE_4__ {int priority; } ;
struct i915_gem_context {TYPE_1__ sched; int vm; } ;
struct drm_i915_gem_object {int dummy; } ;
struct TYPE_5__ {int (* emit_bb_start ) (struct i915_vma*,int ,int ,int ) ;} ;


 scalar_t__ IS_ERR (struct i915_vma*) ;
 int PAGE_SIZE ;
 int PIN_USER ;
 int PTR_ERR (struct i915_vma*) ;
 int i915_request_add (struct i915_vma*) ;
 int i915_request_await_object (struct i915_vma*,int ,int) ;
 struct i915_vma* i915_vma_instance (struct drm_i915_gem_object*,int ,int *) ;
 int i915_vma_lock (struct i915_vma*) ;
 int i915_vma_move_to_active (struct i915_vma*,struct i915_vma*,int ) ;
 int i915_vma_pin (struct i915_vma*,int ,int ,int ) ;
 int i915_vma_unlock (struct i915_vma*) ;
 int i915_vma_unpin (struct i915_vma*) ;
 struct i915_vma* igt_request_alloc (struct i915_gem_context*,int ) ;
 int stub1 (struct i915_vma*,int ,int ,int ) ;

__attribute__((used)) static int smoke_submit(struct preempt_smoke *smoke,
   struct i915_gem_context *ctx, int prio,
   struct drm_i915_gem_object *batch)
{
 struct i915_request *rq;
 struct i915_vma *vma = ((void*)0);
 int err = 0;

 if (batch) {
  vma = i915_vma_instance(batch, ctx->vm, ((void*)0));
  if (IS_ERR(vma))
   return PTR_ERR(vma);

  err = i915_vma_pin(vma, 0, 0, PIN_USER);
  if (err)
   return err;
 }

 ctx->sched.priority = prio;

 rq = igt_request_alloc(ctx, smoke->engine);
 if (IS_ERR(rq)) {
  err = PTR_ERR(rq);
  goto unpin;
 }

 if (vma) {
  i915_vma_lock(vma);
  err = i915_request_await_object(rq, vma->obj, 0);
  if (!err)
   err = i915_vma_move_to_active(vma, rq, 0);
  if (!err)
   err = rq->engine->emit_bb_start(rq,
       vma->node.start,
       PAGE_SIZE, 0);
  i915_vma_unlock(vma);
 }

 i915_request_add(rq);

unpin:
 if (vma)
  i915_vma_unpin(vma);

 return err;
}
