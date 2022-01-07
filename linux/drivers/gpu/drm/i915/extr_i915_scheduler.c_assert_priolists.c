
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rb_node {int dummy; } ;
struct TYPE_2__ {int rb_root; } ;
struct intel_engine_execlists {TYPE_1__ queue; } ;
struct i915_priolist {long priority; int used; int * requests; } ;


 long ARRAY_SIZE (int *) ;
 int BIT (long) ;
 int CONFIG_DRM_I915_DEBUG_GEM ;
 int GEM_BUG_ON (int) ;
 int I915_USER_PRIORITY_SHIFT ;
 int INT_MAX ;
 int IS_ENABLED (int ) ;
 scalar_t__ list_empty (int *) ;
 struct rb_node* rb_first (int *) ;
 struct rb_node* rb_first_cached (TYPE_1__*) ;
 struct rb_node* rb_next (struct rb_node*) ;
 struct i915_priolist* to_priolist (struct rb_node*) ;

__attribute__((used)) static void assert_priolists(struct intel_engine_execlists * const execlists)
{
 struct rb_node *rb;
 long last_prio, i;

 if (!IS_ENABLED(CONFIG_DRM_I915_DEBUG_GEM))
  return;

 GEM_BUG_ON(rb_first_cached(&execlists->queue) !=
     rb_first(&execlists->queue.rb_root));

 last_prio = (INT_MAX >> I915_USER_PRIORITY_SHIFT) + 1;
 for (rb = rb_first_cached(&execlists->queue); rb; rb = rb_next(rb)) {
  const struct i915_priolist *p = to_priolist(rb);

  GEM_BUG_ON(p->priority >= last_prio);
  last_prio = p->priority;

  GEM_BUG_ON(!p->used);
  for (i = 0; i < ARRAY_SIZE(p->requests); i++) {
   if (list_empty(&p->requests[i]))
    continue;

   GEM_BUG_ON(!(p->used & BIT(i)));
  }
 }
}
