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
struct drm_gem_object {int /*<<< orphan*/  dev; } ;
struct drm_file {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,unsigned int) ; 
 int FUNC1 (struct drm_file*,struct drm_gem_object*,unsigned int*) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_gem_object*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct drm_gem_object *obj,
					struct drm_file *file_priv,
					unsigned int *handle)
{
	int ret;

	/*
	 * allocate a id of idr table where the obj is registered
	 * and handle has the id what user can see.
	 */
	ret = FUNC1(file_priv, obj, handle);
	if (ret)
		return ret;

	FUNC0(FUNC3(obj->dev), "gem handle = 0x%x\n", *handle);

	/* drop reference from allocate - handle holds it now. */
	FUNC2(obj);

	return 0;
}