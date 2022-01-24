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
struct drm_gem_object {int dummy; } ;
struct drm_file {int /*<<< orphan*/  table_lock; int /*<<< orphan*/  object_idr; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ FUNC0 (struct drm_gem_object*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct drm_gem_object*,struct drm_file*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct drm_gem_object* FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

int
FUNC6(struct drm_file *filp, u32 handle)
{
	struct drm_gem_object *obj;

	FUNC4(&filp->table_lock);

	/* Check if we currently have a reference on the object */
	obj = FUNC3(&filp->object_idr, NULL, handle);
	FUNC5(&filp->table_lock);
	if (FUNC0(obj))
		return -EINVAL;

	/* Release driver's reference and decrement refcount. */
	FUNC1(handle, obj, filp);

	/* And finally make the handle available for future allocations. */
	FUNC4(&filp->table_lock);
	FUNC2(&filp->object_idr, handle);
	FUNC5(&filp->table_lock);

	return 0;
}