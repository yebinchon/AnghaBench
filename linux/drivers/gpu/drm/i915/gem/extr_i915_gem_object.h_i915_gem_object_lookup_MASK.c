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
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_2__ {int /*<<< orphan*/  refcount; } ;
struct drm_i915_gem_object {TYPE_1__ base; } ;
struct drm_file {int dummy; } ;

/* Variables and functions */
 struct drm_i915_gem_object* FUNC0 (struct drm_file*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 

__attribute__((used)) static inline struct drm_i915_gem_object *
FUNC4(struct drm_file *file, u32 handle)
{
	struct drm_i915_gem_object *obj;

	FUNC2();
	obj = FUNC0(file, handle);
	if (obj && !FUNC1(&obj->base.refcount))
		obj = NULL;
	FUNC3();

	return obj;
}