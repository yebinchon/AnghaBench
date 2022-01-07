
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rb_node {int dummy; } ;
struct intel_engine_execlists {int queue; } ;
struct i915_priolist {int priority; int used; } ;


 int I915_USER_PRIORITY_SHIFT ;
 int INT_MIN ;
 int ffs (int ) ;
 struct rb_node* rb_first_cached (int *) ;
 struct i915_priolist* to_priolist (struct rb_node*) ;

__attribute__((used)) static int queue_prio(const struct intel_engine_execlists *execlists)
{
 struct i915_priolist *p;
 struct rb_node *rb;

 rb = rb_first_cached(&execlists->queue);
 if (!rb)
  return INT_MIN;





 p = to_priolist(rb);
 return ((p->priority + 1) << I915_USER_PRIORITY_SHIFT) - ffs(p->used);
}
