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
struct TYPE_2__ {int /*<<< orphan*/  free_list; int /*<<< orphan*/  free_work; int /*<<< orphan*/  hw_id_list; int /*<<< orphan*/  hw_ida; int /*<<< orphan*/  list; int /*<<< orphan*/  mutex; } ;
struct drm_i915_private {TYPE_1__ contexts; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ GEN11_MAX_CONTEXT_HW_ID ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ INT_MAX ; 
 scalar_t__ MAX_CONTEXT_HW_ID ; 
 int /*<<< orphan*/  contexts_free_worker ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(struct drm_i915_private *i915)
{
	FUNC5(&i915->contexts.mutex);
	FUNC1(&i915->contexts.list);

	/* Using the simple ida interface, the max is limited by sizeof(int) */
	FUNC0(MAX_CONTEXT_HW_ID > INT_MAX);
	FUNC0(GEN11_MAX_CONTEXT_HW_ID > INT_MAX);
	FUNC3(&i915->contexts.hw_ida);
	FUNC1(&i915->contexts.hw_id_list);

	FUNC2(&i915->contexts.free_work, contexts_free_worker);
	FUNC4(&i915->contexts.free_list);
}