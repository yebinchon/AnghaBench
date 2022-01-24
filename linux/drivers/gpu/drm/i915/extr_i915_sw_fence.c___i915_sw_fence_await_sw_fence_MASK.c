#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_5__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int flags; struct i915_sw_fence* private; int /*<<< orphan*/  (* func ) (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ;int /*<<< orphan*/  entry; } ;
typedef  TYPE_1__ wait_queue_entry_t ;
struct TYPE_8__ {int /*<<< orphan*/  lock; } ;
struct i915_sw_fence {TYPE_5__ wait; int /*<<< orphan*/  error; } ;
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int I915_SW_FENCE_FLAG_ALLOC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_5__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (struct i915_sw_fence*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct i915_sw_fence*) ; 
 int /*<<< orphan*/  FUNC5 (struct i915_sw_fence*,struct i915_sw_fence*) ; 
 scalar_t__ FUNC6 (struct i915_sw_fence*) ; 
 int /*<<< orphan*/  FUNC7 (struct i915_sw_fence*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct i915_sw_fence*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC10 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC16(struct i915_sw_fence *fence,
					  struct i915_sw_fence *signaler,
					  wait_queue_entry_t *wq, gfp_t gfp)
{
	unsigned long flags;
	int pending;

	FUNC2(fence);
	FUNC12(FUNC3(gfp));

	if (FUNC6(signaler)) {
		FUNC7(fence, signaler->error);
		return 0;
	}

	FUNC2(signaler);

	/* The dependency graph must be acyclic. */
	if (FUNC15(FUNC5(fence, signaler)))
		return -EINVAL;

	pending = 0;
	if (!wq) {
		wq = FUNC10(sizeof(*wq), gfp);
		if (!wq) {
			if (!FUNC3(gfp))
				return -ENOMEM;

			FUNC8(signaler);
			FUNC7(fence, signaler->error);
			return 0;
		}

		pending |= I915_SW_FENCE_FLAG_ALLOC;
	}

	FUNC0(&wq->entry);
	wq->flags = pending;
	wq->func = i915_sw_fence_wake;
	wq->private = fence;

	FUNC4(fence);

	FUNC13(&signaler->wait.lock, flags);
	if (FUNC11(!FUNC6(signaler))) {
		FUNC1(&signaler->wait, wq);
		pending = 1;
	} else {
		FUNC9(wq, 0, signaler->error, NULL);
		pending = 0;
	}
	FUNC14(&signaler->wait.lock, flags);

	return pending;
}