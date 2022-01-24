#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct rb_node {struct rb_node* rb_right; struct rb_node* rb_left; } ;
struct list_head {int dummy; } ;
struct TYPE_6__ {struct rb_node* rb_node; } ;
struct TYPE_7__ {TYPE_2__ rb_root; } ;
struct i915_priolist {int priority; struct list_head* requests; int /*<<< orphan*/  used; int /*<<< orphan*/  node; } ;
struct intel_engine_execlists {int no_priolist; TYPE_3__ queue; struct i915_priolist default_priolist; } ;
struct TYPE_5__ {int /*<<< orphan*/  lock; } ;
struct intel_engine_cs {TYPE_1__ active; struct intel_engine_execlists execlists; } ;
struct TYPE_8__ {int /*<<< orphan*/  slab_priorities; } ;

/* Variables and functions */
 int FUNC0 (struct list_head*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int I915_PRIORITY_COUNT ; 
 int I915_PRIORITY_MASK ; 
 int I915_PRIORITY_NORMAL ; 
 int I915_USER_PRIORITY_SHIFT ; 
 int /*<<< orphan*/  FUNC2 (struct list_head*) ; 
 int /*<<< orphan*/  FUNC3 (struct intel_engine_execlists* const) ; 
 TYPE_4__ global ; 
 struct i915_priolist* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,struct rb_node*,struct rb_node**) ; 
 struct i915_priolist* FUNC8 (struct rb_node*) ; 
 scalar_t__ FUNC9 (int) ; 

struct list_head *
FUNC10(struct intel_engine_cs *engine, int prio)
{
	struct intel_engine_execlists * const execlists = &engine->execlists;
	struct i915_priolist *p;
	struct rb_node **parent, *rb;
	bool first = true;
	int idx, i;

	FUNC5(&engine->active.lock);
	FUNC3(execlists);

	/* buckets sorted from highest [in slot 0] to lowest priority */
	idx = I915_PRIORITY_COUNT - (prio & I915_PRIORITY_MASK) - 1;
	prio >>= I915_USER_PRIORITY_SHIFT;
	if (FUNC9(execlists->no_priolist))
		prio = I915_PRIORITY_NORMAL;

find_priolist:
	/* most positive priority is scheduled first, equal priorities fifo */
	rb = NULL;
	parent = &execlists->queue.rb_root.rb_node;
	while (*parent) {
		rb = *parent;
		p = FUNC8(rb);
		if (prio > p->priority) {
			parent = &rb->rb_left;
		} else if (prio < p->priority) {
			parent = &rb->rb_right;
			first = false;
		} else {
			goto out;
		}
	}

	if (prio == I915_PRIORITY_NORMAL) {
		p = &execlists->default_priolist;
	} else {
		p = FUNC4(global.slab_priorities, GFP_ATOMIC);
		/* Convert an allocation failure to a priority bump */
		if (FUNC9(!p)) {
			prio = I915_PRIORITY_NORMAL; /* recurses just once */

			/* To maintain ordering with all rendering, after an
			 * allocation failure we have to disable all scheduling.
			 * Requests will then be executed in fifo, and schedule
			 * will ensure that dependencies are emitted in fifo.
			 * There will be still some reordering with existing
			 * requests, so if userspace lied about their
			 * dependencies that reordering may be visible.
			 */
			execlists->no_priolist = true;
			goto find_priolist;
		}
	}

	p->priority = prio;
	for (i = 0; i < FUNC0(p->requests); i++)
		FUNC2(&p->requests[i]);
	FUNC7(&p->node, rb, parent);
	FUNC6(&p->node, &execlists->queue, first);
	p->used = 0;

out:
	p->used |= FUNC1(idx);
	return &p->requests[idx];
}