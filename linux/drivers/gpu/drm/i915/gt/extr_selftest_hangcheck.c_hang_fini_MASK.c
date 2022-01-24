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
struct hang {TYPE_1__* gt; int /*<<< orphan*/  ctx; int /*<<< orphan*/  hws; int /*<<< orphan*/  obj; int /*<<< orphan*/ * batch; } ;
struct TYPE_2__ {int /*<<< orphan*/  i915; } ;

/* Variables and functions */
 int /*<<< orphan*/  I915_WAIT_LOCKED ; 
 int /*<<< orphan*/  MI_BATCH_BUFFER_END ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct hang *h)
{
	*h->batch = MI_BATCH_BUFFER_END;
	FUNC3(h->gt);

	FUNC1(h->obj);
	FUNC0(h->obj);

	FUNC1(h->hws);
	FUNC0(h->hws);

	FUNC4(h->ctx);

	FUNC2(h->gt->i915, I915_WAIT_LOCKED);
}