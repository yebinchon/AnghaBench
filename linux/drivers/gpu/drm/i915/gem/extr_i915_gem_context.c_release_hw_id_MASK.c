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
struct i915_gem_context {int /*<<< orphan*/  hw_id_link; int /*<<< orphan*/  hw_id; struct drm_i915_private* i915; } ;
struct TYPE_2__ {int /*<<< orphan*/  mutex; int /*<<< orphan*/  hw_ida; } ;
struct drm_i915_private {TYPE_1__ contexts; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct i915_gem_context *ctx)
{
	struct drm_i915_private *i915 = ctx->i915;

	if (FUNC2(&ctx->hw_id_link))
		return;

	FUNC3(&i915->contexts.mutex);
	if (!FUNC2(&ctx->hw_id_link)) {
		FUNC0(&i915->contexts.hw_ida, ctx->hw_id);
		FUNC1(&ctx->hw_id_link);
	}
	FUNC4(&i915->contexts.mutex);
}