
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int seqno; int context; } ;
struct i915_request {int gem_context; TYPE_2__ fence; TYPE_1__* engine; } ;
struct TYPE_3__ {int name; } ;


 int EAGAIN ;
 int EIO ;
 int GEM_BUG_ON (int ) ;
 int GEM_TRACE (char*,int ,int ,int ,int ) ;
 scalar_t__ context_mark_guilty (int ) ;
 int context_mark_innocent (int ) ;
 int dma_fence_set_error (TYPE_2__*,int ) ;
 int engine_skip_context (struct i915_request*) ;
 int i915_request_completed (struct i915_request*) ;
 int i915_request_skip (struct i915_request*,int ) ;
 int yesno (int) ;

void __i915_request_reset(struct i915_request *rq, bool guilty)
{
 GEM_TRACE("%s rq=%llx:%lld, guilty? %s\n",
    rq->engine->name,
    rq->fence.context,
    rq->fence.seqno,
    yesno(guilty));

 GEM_BUG_ON(i915_request_completed(rq));

 if (guilty) {
  i915_request_skip(rq, -EIO);
  if (context_mark_guilty(rq->gem_context))
   engine_skip_context(rq);
 } else {
  dma_fence_set_error(&rq->fence, -EAGAIN);
  context_mark_innocent(rq->gem_context);
 }
}
