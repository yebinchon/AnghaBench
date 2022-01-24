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
typedef  union omap_gem_size {int dummy; } omap_gem_size ;
typedef  int /*<<< orphan*/  u32 ;
struct drm_gem_object {int dummy; } ;
struct drm_file {int dummy; } ;
struct drm_device {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int FUNC0 (struct drm_file*,struct drm_gem_object*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_gem_object*) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_gem_object*) ; 
 struct drm_gem_object* FUNC3 (struct drm_device*,union omap_gem_size,int /*<<< orphan*/ ) ; 

int FUNC4(struct drm_device *dev, struct drm_file *file,
		union omap_gem_size gsize, u32 flags, u32 *handle)
{
	struct drm_gem_object *obj;
	int ret;

	obj = FUNC3(dev, gsize, flags);
	if (!obj)
		return -ENOMEM;

	ret = FUNC0(file, obj, handle);
	if (ret) {
		FUNC2(obj);
		return ret;
	}

	/* drop reference from allocate - handle holds it now */
	FUNC1(obj);

	return 0;
}