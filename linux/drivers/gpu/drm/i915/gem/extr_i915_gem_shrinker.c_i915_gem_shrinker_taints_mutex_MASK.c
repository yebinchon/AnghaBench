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
struct mutex {int /*<<< orphan*/  dep_map; } ;
struct TYPE_4__ {int /*<<< orphan*/  dep_map; } ;
struct TYPE_3__ {TYPE_2__ struct_mutex; } ;
struct drm_i915_private {TYPE_1__ drm; } ;

/* Variables and functions */
 int /*<<< orphan*/  CONFIG_LOCKDEP ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  I915_MM_NORMAL ; 
 int /*<<< orphan*/  I915_MM_SHRINKER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  _RET_IP_ ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC6(struct drm_i915_private *i915,
				    struct mutex *mutex)
{
	bool unlock = false;

	if (!FUNC0(CONFIG_LOCKDEP))
		return;

	if (!FUNC3(&i915->drm.struct_mutex, -1)) {
		FUNC4(&i915->drm.struct_mutex.dep_map,
			      I915_MM_NORMAL, 0, _RET_IP_);
		unlock = true;
	}

	FUNC1(GFP_KERNEL);

	/*
	 * As we invariably rely on the struct_mutex within the shrinker,
	 * but have a complicated recursion dance, taint all the mutexes used
	 * within the shrinker with the struct_mutex. For completeness, we
	 * taint with all subclass of struct_mutex, even though we should
	 * only need tainting by I915_MM_NORMAL to catch possible ABBA
	 * deadlocks from using struct_mutex inside @mutex.
	 */
	FUNC4(&i915->drm.struct_mutex.dep_map,
		      I915_MM_SHRINKER, 0, _RET_IP_);

	FUNC4(&mutex->dep_map, 0, 0, _RET_IP_);
	FUNC5(&mutex->dep_map, 0, _RET_IP_);

	FUNC5(&i915->drm.struct_mutex.dep_map, 0, _RET_IP_);

	FUNC2(GFP_KERNEL);

	if (unlock)
		FUNC5(&i915->drm.struct_mutex.dep_map, 0, _RET_IP_);
}