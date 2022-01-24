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
 int ENOENT ; 
 int /*<<< orphan*/  FUNC0 (struct drm_gem_object*) ; 
 struct drm_gem_object* FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct drm_file *filp, u32 *handle, int count,
			  struct drm_gem_object **objs)
{
	int i, ret = 0;
	struct drm_gem_object *obj;

	FUNC2(&filp->table_lock);

	for (i = 0; i < count; i++) {
		/* Check if we currently have a reference on the object */
		obj = FUNC1(&filp->object_idr, handle[i]);
		if (!obj) {
			ret = -ENOENT;
			break;
		}
		FUNC0(obj);
		objs[i] = obj;
	}
	FUNC3(&filp->table_lock);

	return ret;
}