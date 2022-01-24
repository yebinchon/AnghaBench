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
typedef  int /*<<< orphan*/  uint32_t ;
struct drm_gem_object {int dummy; } ;
struct drm_file {int dummy; } ;
struct drm_device {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct drm_gem_object*) ; 
 int FUNC1 (struct drm_gem_object*) ; 
 int FUNC2 (struct drm_file*,struct drm_gem_object*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_gem_object*) ; 
 struct drm_gem_object* FUNC4 (struct drm_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct drm_gem_object*,char*,char*) ; 

int FUNC6(struct drm_device *dev, struct drm_file *file,
		uint32_t size, uint32_t flags, uint32_t *handle,
		char *name)
{
	struct drm_gem_object *obj;
	int ret;

	obj = FUNC4(dev, size, flags);

	if (FUNC0(obj))
		return FUNC1(obj);

	if (name)
		FUNC5(obj, "%s", name);

	ret = FUNC2(file, obj, handle);

	/* drop reference from allocate - handle holds it now */
	FUNC3(obj);

	return ret;
}