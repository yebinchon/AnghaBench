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
typedef  int /*<<< orphan*/  u32 ;
struct drm_i915_gem_object {int dummy; } ;
struct drm_file {int /*<<< orphan*/  object_idr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ debug_locks ; 
 struct drm_i915_gem_object* FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  rcu_lock_map ; 

__attribute__((used)) static inline struct drm_i915_gem_object *
FUNC3(struct drm_file *file, u32 handle)
{
#ifdef CONFIG_LOCKDEP
	WARN_ON(debug_locks && !lock_is_held(&rcu_lock_map));
#endif
	return FUNC1(&file->object_idr, handle);
}