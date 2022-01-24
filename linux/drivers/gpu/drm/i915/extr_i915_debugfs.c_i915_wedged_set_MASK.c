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
typedef  int /*<<< orphan*/  u64 ;
struct TYPE_3__ {int /*<<< orphan*/  flags; int /*<<< orphan*/  queue; } ;
struct TYPE_4__ {TYPE_1__ reset; } ;
struct drm_i915_private {TYPE_2__ gt; } ;

/* Variables and functions */
 int /*<<< orphan*/  I915_ERROR_CAPTURE ; 
 int /*<<< orphan*/  I915_RESET_BACKOFF ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC3(void *data, u64 val)
{
	struct drm_i915_private *i915 = data;

	/* Flush any previous reset before applying for a new one */
	FUNC2(i915->gt.reset.queue,
		   !FUNC1(I915_RESET_BACKOFF, &i915->gt.reset.flags));

	FUNC0(&i915->gt, val, I915_ERROR_CAPTURE,
			      "Manually set wedged engine mask = %llx", val);
	return 0;
}