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
struct intel_context {int /*<<< orphan*/  pin_count; } ;
struct i915_execbuffer {TYPE_2__* i915; } ;
struct TYPE_3__ {int /*<<< orphan*/  struct_mutex; } ;
struct TYPE_4__ {TYPE_1__ drm; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct intel_context*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC5(struct i915_execbuffer *eb, struct intel_context *ce)
{
	if (FUNC2(FUNC0(&ce->pin_count, -1, 1)))
		return;

	FUNC3(&eb->i915->drm.struct_mutex);
	FUNC1(ce);
	FUNC4(&eb->i915->drm.struct_mutex);
}