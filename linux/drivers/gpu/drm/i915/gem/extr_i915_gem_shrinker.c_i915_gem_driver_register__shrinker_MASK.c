#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  notifier_call; } ;
struct TYPE_8__ {int /*<<< orphan*/  notifier_call; } ;
struct TYPE_7__ {int batch; int /*<<< orphan*/  seeks; int /*<<< orphan*/  count_objects; int /*<<< orphan*/  scan_objects; } ;
struct TYPE_5__ {TYPE_2__ vmap_notifier; TYPE_4__ oom_notifier; TYPE_3__ shrinker; } ;
struct drm_i915_private {TYPE_1__ mm; } ;

/* Variables and functions */
 int /*<<< orphan*/  DEFAULT_SEEKS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  i915_gem_shrinker_count ; 
 int /*<<< orphan*/  i915_gem_shrinker_oom ; 
 int /*<<< orphan*/  i915_gem_shrinker_scan ; 
 int /*<<< orphan*/  i915_gem_shrinker_vmap ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 

void FUNC4(struct drm_i915_private *i915)
{
	i915->mm.shrinker.scan_objects = i915_gem_shrinker_scan;
	i915->mm.shrinker.count_objects = i915_gem_shrinker_count;
	i915->mm.shrinker.seeks = DEFAULT_SEEKS;
	i915->mm.shrinker.batch = 4096;
	FUNC0(FUNC2(&i915->mm.shrinker));

	i915->mm.oom_notifier.notifier_call = i915_gem_shrinker_oom;
	FUNC0(FUNC1(&i915->mm.oom_notifier));

	i915->mm.vmap_notifier.notifier_call = i915_gem_shrinker_vmap;
	FUNC0(FUNC3(&i915->mm.vmap_notifier));
}