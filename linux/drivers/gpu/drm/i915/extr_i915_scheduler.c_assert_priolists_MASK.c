#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct rb_node {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  rb_root; } ;
struct intel_engine_execlists {TYPE_1__ queue; } ;
struct i915_priolist {long priority; int used; int /*<<< orphan*/ * requests; } ;

/* Variables and functions */
 long FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (long) ; 
 int /*<<< orphan*/  CONFIG_DRM_I915_DEBUG_GEM ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int I915_USER_PRIORITY_SHIFT ; 
 int INT_MAX ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 struct rb_node* FUNC5 (int /*<<< orphan*/ *) ; 
 struct rb_node* FUNC6 (TYPE_1__*) ; 
 struct rb_node* FUNC7 (struct rb_node*) ; 
 struct i915_priolist* FUNC8 (struct rb_node*) ; 

__attribute__((used)) static void FUNC9(struct intel_engine_execlists * const execlists)
{
	struct rb_node *rb;
	long last_prio, i;

	if (!FUNC3(CONFIG_DRM_I915_DEBUG_GEM))
		return;

	FUNC2(FUNC6(&execlists->queue) !=
		   FUNC5(&execlists->queue.rb_root));

	last_prio = (INT_MAX >> I915_USER_PRIORITY_SHIFT) + 1;
	for (rb = FUNC6(&execlists->queue); rb; rb = FUNC7(rb)) {
		const struct i915_priolist *p = FUNC8(rb);

		FUNC2(p->priority >= last_prio);
		last_prio = p->priority;

		FUNC2(!p->used);
		for (i = 0; i < FUNC0(p->requests); i++) {
			if (FUNC4(&p->requests[i]))
				continue;

			FUNC2(!(p->used & FUNC1(i)));
		}
	}
}