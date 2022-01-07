
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int attr; } ;
struct TYPE_4__ {int seqno; int context; int flags; } ;
struct i915_request {int tail; int head; TYPE_3__* ring; int emitted_jiffies; TYPE_2__ sched; TYPE_1__ fence; struct i915_gem_context* gem_context; } ;
struct i915_gem_context {scalar_t__ pid; } ;
struct drm_i915_error_request {int pid; int tail; int head; int start; int jiffies; int sched_attr; int seqno; int context; int flags; } ;
struct TYPE_6__ {int vma; } ;


 int i915_ggtt_offset (int ) ;
 int pid_nr (scalar_t__) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;

__attribute__((used)) static void record_request(const struct i915_request *request,
      struct drm_i915_error_request *erq)
{
 const struct i915_gem_context *ctx = request->gem_context;

 erq->flags = request->fence.flags;
 erq->context = request->fence.context;
 erq->seqno = request->fence.seqno;
 erq->sched_attr = request->sched.attr;
 erq->jiffies = request->emitted_jiffies;
 erq->start = i915_ggtt_offset(request->ring->vma);
 erq->head = request->head;
 erq->tail = request->tail;

 rcu_read_lock();
 erq->pid = ctx->pid ? pid_nr(ctx->pid) : 0;
 rcu_read_unlock();
}
