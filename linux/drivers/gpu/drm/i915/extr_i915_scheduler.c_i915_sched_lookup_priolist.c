
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct rb_node {struct rb_node* rb_right; struct rb_node* rb_left; } ;
struct list_head {int dummy; } ;
struct TYPE_6__ {struct rb_node* rb_node; } ;
struct TYPE_7__ {TYPE_2__ rb_root; } ;
struct i915_priolist {int priority; struct list_head* requests; int used; int node; } ;
struct intel_engine_execlists {int no_priolist; TYPE_3__ queue; struct i915_priolist default_priolist; } ;
struct TYPE_5__ {int lock; } ;
struct intel_engine_cs {TYPE_1__ active; struct intel_engine_execlists execlists; } ;
struct TYPE_8__ {int slab_priorities; } ;


 int ARRAY_SIZE (struct list_head*) ;
 int BIT (int) ;
 int GFP_ATOMIC ;
 int I915_PRIORITY_COUNT ;
 int I915_PRIORITY_MASK ;
 int I915_PRIORITY_NORMAL ;
 int I915_USER_PRIORITY_SHIFT ;
 int INIT_LIST_HEAD (struct list_head*) ;
 int assert_priolists (struct intel_engine_execlists* const) ;
 TYPE_4__ global ;
 struct i915_priolist* kmem_cache_alloc (int ,int ) ;
 int lockdep_assert_held (int *) ;
 int rb_insert_color_cached (int *,TYPE_3__*,int) ;
 int rb_link_node (int *,struct rb_node*,struct rb_node**) ;
 struct i915_priolist* to_priolist (struct rb_node*) ;
 scalar_t__ unlikely (int) ;

struct list_head *
i915_sched_lookup_priolist(struct intel_engine_cs *engine, int prio)
{
 struct intel_engine_execlists * const execlists = &engine->execlists;
 struct i915_priolist *p;
 struct rb_node **parent, *rb;
 bool first = 1;
 int idx, i;

 lockdep_assert_held(&engine->active.lock);
 assert_priolists(execlists);


 idx = I915_PRIORITY_COUNT - (prio & I915_PRIORITY_MASK) - 1;
 prio >>= I915_USER_PRIORITY_SHIFT;
 if (unlikely(execlists->no_priolist))
  prio = I915_PRIORITY_NORMAL;

find_priolist:

 rb = ((void*)0);
 parent = &execlists->queue.rb_root.rb_node;
 while (*parent) {
  rb = *parent;
  p = to_priolist(rb);
  if (prio > p->priority) {
   parent = &rb->rb_left;
  } else if (prio < p->priority) {
   parent = &rb->rb_right;
   first = 0;
  } else {
   goto out;
  }
 }

 if (prio == I915_PRIORITY_NORMAL) {
  p = &execlists->default_priolist;
 } else {
  p = kmem_cache_alloc(global.slab_priorities, GFP_ATOMIC);

  if (unlikely(!p)) {
   prio = I915_PRIORITY_NORMAL;
   execlists->no_priolist = 1;
   goto find_priolist;
  }
 }

 p->priority = prio;
 for (i = 0; i < ARRAY_SIZE(p->requests); i++)
  INIT_LIST_HEAD(&p->requests[i]);
 rb_link_node(&p->node, rb, parent);
 rb_insert_color_cached(&p->node, &execlists->queue, first);
 p->used = 0;

out:
 p->used |= BIT(idx);
 return &p->requests[idx];
}
