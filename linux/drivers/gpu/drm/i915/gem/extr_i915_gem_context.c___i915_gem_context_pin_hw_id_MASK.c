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
struct i915_gem_context {int /*<<< orphan*/  hw_id_pin_count; int /*<<< orphan*/  hw_id_link; int /*<<< orphan*/  hw_id; struct drm_i915_private* i915; } ;
struct TYPE_2__ {int /*<<< orphan*/  mutex; int /*<<< orphan*/  hw_id_list; } ;
struct drm_i915_private {TYPE_1__ contexts; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (struct drm_i915_private*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 unsigned int FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (struct i915_gem_context*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

int FUNC9(struct i915_gem_context *ctx)
{
	struct drm_i915_private *i915 = ctx->i915;
	int err = 0;

	FUNC7(&i915->contexts.mutex);

	FUNC0(FUNC4(ctx));

	if (FUNC6(&ctx->hw_id_link)) {
		FUNC0(FUNC3(&ctx->hw_id_pin_count));

		err = FUNC1(i915, &ctx->hw_id);
		if (err)
			goto out_unlock;

		FUNC5(&ctx->hw_id_link, &i915->contexts.hw_id_list);
	}

	FUNC0(FUNC3(&ctx->hw_id_pin_count) == ~0u);
	FUNC2(&ctx->hw_id_pin_count);

out_unlock:
	FUNC8(&i915->contexts.mutex);
	return err;
}