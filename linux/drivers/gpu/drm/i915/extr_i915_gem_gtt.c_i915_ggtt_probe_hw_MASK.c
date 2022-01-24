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
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;
struct drm_i915_private {TYPE_1__ drm; int /*<<< orphan*/  gt; int /*<<< orphan*/  ggtt; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 () ; 

int FUNC3(struct drm_i915_private *i915)
{
	int ret;

	ret = FUNC1(&i915->ggtt, &i915->gt);
	if (ret)
		return ret;

	if (FUNC2())
		FUNC0(i915->drm.dev, "VT-d active for gfx access\n");

	return 0;
}