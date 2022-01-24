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
struct drm_mode_create_dumb {size_t pitch; size_t size; size_t height; int /*<<< orphan*/  handle; int /*<<< orphan*/  bpp; int /*<<< orphan*/  width; } ;
struct drm_file {int dummy; } ;
struct drm_device {int dummy; } ;
struct armada_gem_object {int /*<<< orphan*/  obj; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,struct armada_gem_object*,size_t,int /*<<< orphan*/ ) ; 
 int ENOMEM ; 
 struct armada_gem_object* FUNC1 (struct drm_device*,size_t) ; 
 int FUNC2 (struct drm_device*,struct armada_gem_object*) ; 
 size_t FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct drm_file*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

int FUNC6(struct drm_file *file, struct drm_device *dev,
	struct drm_mode_create_dumb *args)
{
	struct armada_gem_object *dobj;
	u32 handle;
	size_t size;
	int ret;

	args->pitch = FUNC3(args->width, args->bpp);
	args->size = size = args->pitch * args->height;

	dobj = FUNC1(dev, size);
	if (dobj == NULL)
		return -ENOMEM;

	ret = FUNC2(dev, dobj);
	if (ret)
		goto err;

	ret = FUNC4(file, &dobj->obj, &handle);
	if (ret)
		goto err;

	args->handle = handle;

	/* drop reference from allocate - handle holds it now */
	FUNC0("obj %p size %zu handle %#x\n", dobj, size, handle);
 err:
	FUNC5(&dobj->obj);
	return ret;
}