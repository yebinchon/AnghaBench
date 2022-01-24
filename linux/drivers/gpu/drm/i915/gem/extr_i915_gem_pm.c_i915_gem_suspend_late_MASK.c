#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct list_head {int dummy; } ;
struct TYPE_6__ {int /*<<< orphan*/  obj_lock; struct list_head purge_list; struct list_head shrink_list; } ;
struct drm_i915_private {TYPE_3__ mm; } ;
struct TYPE_5__ {int /*<<< orphan*/  refcount; } ;
struct TYPE_4__ {int /*<<< orphan*/  link; } ;
struct drm_i915_gem_object {TYPE_2__ base; TYPE_1__ mm; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct drm_i915_gem_object* FUNC2 (struct list_head*) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_i915_gem_object*) ; 
 int /*<<< orphan*/  FUNC4 (struct drm_i915_gem_object*) ; 
 int /*<<< orphan*/  FUNC5 (struct drm_i915_gem_object*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct drm_i915_gem_object*) ; 
 int /*<<< orphan*/  FUNC7 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  keep ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,struct list_head*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,unsigned long) ; 

void FUNC13(struct drm_i915_private *i915)
{
	struct drm_i915_gem_object *obj;
	struct list_head *phases[] = {
		&i915->mm.shrink_list,
		&i915->mm.purge_list,
		NULL
	}, **phase;
	unsigned long flags;

	/*
	 * Neither the BIOS, ourselves or any other kernel
	 * expects the system to be in execlists mode on startup,
	 * so we need to reset the GPU back to legacy mode. And the only
	 * known way to disable logical contexts is through a GPU reset.
	 *
	 * So in order to leave the system in a known default configuration,
	 * always reset the GPU upon unload and suspend. Afterwards we then
	 * clean up the GEM state tracking, flushing off the requests and
	 * leaving the system in a known idle state.
	 *
	 * Note that is of the upmost importance that the GPU is idle and
	 * all stray writes are flushed *before* we dismantle the backing
	 * storage for the pinned objects.
	 *
	 * However, since we are uncertain that resetting the GPU on older
	 * machines is a good idea, we don't - just in case it leaves the
	 * machine in an unusable condition.
	 */

	FUNC11(&i915->mm.obj_lock, flags);
	for (phase = phases; *phase; phase++) {
		FUNC0(keep);

		while ((obj = FUNC2(*phase))) {
			FUNC9(&obj->mm.link, &keep);

			/* Beware the background _i915_gem_free_objects */
			if (!FUNC8(&obj->base.refcount))
				continue;

			FUNC12(&i915->mm.obj_lock, flags);

			FUNC3(obj);
			FUNC1(FUNC5(obj, false));
			FUNC6(obj);
			FUNC4(obj);

			FUNC11(&i915->mm.obj_lock, flags);
		}

		FUNC10(&keep, *phase);
	}
	FUNC12(&i915->mm.obj_lock, flags);

	FUNC7(i915);
}