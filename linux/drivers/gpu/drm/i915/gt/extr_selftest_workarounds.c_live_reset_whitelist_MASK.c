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
struct TYPE_2__ {scalar_t__ count; } ;
struct intel_engine_cs {TYPE_1__ whitelist; } ;
struct drm_i915_private {int /*<<< orphan*/  gt; struct intel_engine_cs** engine; } ;

/* Variables and functions */
 size_t RCS0 ; 
 int FUNC0 (struct intel_engine_cs*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  do_device_reset ; 
 int /*<<< orphan*/  do_engine_reset ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (struct drm_i915_private*) ; 
 scalar_t__ FUNC4 (struct drm_i915_private*) ; 

__attribute__((used)) static int FUNC5(void *arg)
{
	struct drm_i915_private *i915 = arg;
	struct intel_engine_cs *engine = i915->engine[RCS0];
	int err = 0;

	/* If we reset the gpu, we should not lose the RING_NONPRIV */

	if (!engine || engine->whitelist.count == 0)
		return 0;

	FUNC1(&i915->gt);

	if (FUNC4(i915)) {
		err = FUNC0(engine,
						   do_engine_reset,
						   "engine");
		if (err)
			goto out;
	}

	if (FUNC3(i915)) {
		err = FUNC0(engine,
						   do_device_reset,
						   "device");
		if (err)
			goto out;
	}

out:
	FUNC2(&i915->gt);
	return err;
}