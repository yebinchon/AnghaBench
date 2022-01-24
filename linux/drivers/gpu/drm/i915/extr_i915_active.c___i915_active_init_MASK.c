#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct lock_class_key {int dummy; } ;
struct i915_active {int (* active ) (struct i915_active*) ;void (* retire ) (struct i915_active*) ;int /*<<< orphan*/  mutex; int /*<<< orphan*/  count; int /*<<< orphan*/  preallocated_barriers; int /*<<< orphan*/ * cache; int /*<<< orphan*/  tree; scalar_t__ flags; struct drm_i915_private* i915; } ;
struct drm_i915_private {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  RB_ROOT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,struct lock_class_key*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct i915_active*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void FUNC4(struct drm_i915_private *i915,
			struct i915_active *ref,
			int (*active)(struct i915_active *ref),
			void (*retire)(struct i915_active *ref),
			struct lock_class_key *key)
{
	FUNC2(ref);

	ref->i915 = i915;
	ref->flags = 0;
	ref->active = active;
	ref->retire = retire;
	ref->tree = RB_ROOT;
	ref->cache = NULL;
	FUNC3(&ref->preallocated_barriers);
	FUNC1(&ref->count, 0);
	FUNC0(&ref->mutex, "i915_active", key);
}