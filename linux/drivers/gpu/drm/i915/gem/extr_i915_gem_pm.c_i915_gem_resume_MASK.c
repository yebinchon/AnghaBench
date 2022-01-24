#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  uc; } ;
struct TYPE_5__ {int /*<<< orphan*/  dev; int /*<<< orphan*/  struct_mutex; } ;
struct drm_i915_private {TYPE_2__ gt; TYPE_1__ drm; int /*<<< orphan*/  uncore; } ;

/* Variables and functions */
 int /*<<< orphan*/  FORCEWAKE_ALL ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC2 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 scalar_t__ FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 

void FUNC12(struct drm_i915_private *i915)
{
	FUNC0("\n");

	FUNC10(&i915->drm.struct_mutex);
	FUNC8(&i915->uncore, FORCEWAKE_ALL);

	if (FUNC2(i915))
		goto err_wedged;

	/*
	 * As we didn't flush the kernel context before suspend, we cannot
	 * guarantee that the context image is complete. So let's just reset
	 * it and start again.
	 */
	if (FUNC5(&i915->gt))
		goto err_wedged;

	FUNC7(&i915->gt.uc);

	/* Always reload a context for powersaving. */
	if (!FUNC3(i915))
		goto err_wedged;

out_unlock:
	FUNC9(&i915->uncore, FORCEWAKE_ALL);
	FUNC11(&i915->drm.struct_mutex);
	return;

err_wedged:
	if (!FUNC4(&i915->gt)) {
		FUNC1(i915->drm.dev,
			"Failed to re-initialize GPU, declaring it wedged!\n");
		FUNC6(&i915->gt);
	}
	goto out_unlock;
}