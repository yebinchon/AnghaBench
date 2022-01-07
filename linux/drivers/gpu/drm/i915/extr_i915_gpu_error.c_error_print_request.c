
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct drm_i915_error_state_buf {int dummy; } ;
struct TYPE_2__ {int priority; } ;
struct drm_i915_error_request {int tail; int head; int start; scalar_t__ jiffies; TYPE_1__ sched_attr; int flags; int seqno; int context; int pid; } ;


 int DMA_FENCE_FLAG_ENABLE_SIGNAL_BIT ;
 int DMA_FENCE_FLAG_SIGNALED_BIT ;
 int err_printf (struct drm_i915_error_state_buf*,char*,char const*,int ,int ,int ,char*,char*,int ,int ,int ,int ,int ) ;
 int jiffies_to_msecs (scalar_t__) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static void error_print_request(struct drm_i915_error_state_buf *m,
    const char *prefix,
    const struct drm_i915_error_request *erq,
    const unsigned long epoch)
{
 if (!erq->seqno)
  return;

 err_printf(m, "%s pid %d, seqno %8x:%08x%s%s, prio %d, emitted %dms, start %08x, head %08x, tail %08x\n",
     prefix, erq->pid, erq->context, erq->seqno,
     test_bit(DMA_FENCE_FLAG_SIGNALED_BIT,
       &erq->flags) ? "!" : "",
     test_bit(DMA_FENCE_FLAG_ENABLE_SIGNAL_BIT,
       &erq->flags) ? "+" : "",
     erq->sched_attr.priority,
     jiffies_to_msecs(erq->jiffies - epoch),
     erq->start, erq->head, erq->tail);
}
