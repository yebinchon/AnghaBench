
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct intel_context {int signal_link; int signals; } ;
struct intel_breadcrumbs {int irq_lock; } ;
struct TYPE_3__ {int flags; } ;
struct i915_request {TYPE_1__ fence; int signal_link; struct intel_context* hw_context; int lock; TYPE_2__* engine; } ;
struct TYPE_4__ {struct intel_breadcrumbs breadcrumbs; } ;


 int I915_FENCE_FLAG_SIGNAL ;
 int clear_bit (int ,int *) ;
 int list_del (int *) ;
 int list_del_init (int *) ;
 scalar_t__ list_empty (int *) ;
 int lockdep_assert_held (int *) ;
 int lockdep_assert_irqs_disabled () ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 scalar_t__ test_bit (int ,int *) ;

void i915_request_cancel_breadcrumb(struct i915_request *rq)
{
 struct intel_breadcrumbs *b = &rq->engine->breadcrumbs;

 lockdep_assert_held(&rq->lock);
 lockdep_assert_irqs_disabled();







 spin_lock(&b->irq_lock);
 if (test_bit(I915_FENCE_FLAG_SIGNAL, &rq->fence.flags)) {
  struct intel_context *ce = rq->hw_context;

  list_del(&rq->signal_link);
  if (list_empty(&ce->signals))
   list_del_init(&ce->signal_link);

  clear_bit(I915_FENCE_FLAG_SIGNAL, &rq->fence.flags);
 }
 spin_unlock(&b->irq_lock);
}
