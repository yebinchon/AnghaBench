#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct preempt_smoke {unsigned long count; TYPE_1__* i915; int /*<<< orphan*/  batch; } ;
struct i915_gem_context {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  struct_mutex; } ;
struct TYPE_3__ {TYPE_2__ drm; } ;

/* Variables and functions */
 unsigned long I915_PRIORITY_MAX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  end_time ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct i915_gem_context* FUNC4 (struct preempt_smoke*) ; 
 int FUNC5 (struct preempt_smoke*,struct i915_gem_context*,unsigned long,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(void *arg)
{
	struct preempt_smoke *smoke = arg;
	FUNC0(end_time);
	unsigned long count;

	count = 0;
	do {
		struct i915_gem_context *ctx = FUNC4(smoke);
		int err;

		FUNC2(&smoke->i915->drm.struct_mutex);
		err = FUNC5(smoke,
				   ctx, count % I915_PRIORITY_MAX,
				   smoke->batch);
		FUNC3(&smoke->i915->drm.struct_mutex);
		if (err)
			return err;

		count++;
	} while (!FUNC1(end_time, NULL));

	smoke->count = count;
	return 0;
}