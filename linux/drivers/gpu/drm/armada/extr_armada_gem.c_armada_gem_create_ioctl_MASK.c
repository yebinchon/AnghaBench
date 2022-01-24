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
struct drm_file {int dummy; } ;
struct drm_device {int dummy; } ;
struct drm_armada_gem_create {size_t size; int /*<<< orphan*/  handle; } ;
struct armada_gem_object {int /*<<< orphan*/  obj; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,struct armada_gem_object*,size_t,int /*<<< orphan*/ ) ; 
 int ENOMEM ; 
 struct armada_gem_object* FUNC1 (struct drm_device*,size_t) ; 
 int FUNC2 (struct drm_file*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

int FUNC4(struct drm_device *dev, void *data,
	struct drm_file *file)
{
	struct drm_armada_gem_create *args = data;
	struct armada_gem_object *dobj;
	size_t size;
	u32 handle;
	int ret;

	if (args->size == 0)
		return -ENOMEM;

	size = args->size;

	dobj = FUNC1(dev, size);
	if (dobj == NULL)
		return -ENOMEM;

	ret = FUNC2(file, &dobj->obj, &handle);
	if (ret)
		goto err;

	args->handle = handle;

	/* drop reference from allocate - handle holds it now */
	FUNC0("obj %p size %zu handle %#x\n", dobj, size, handle);
 err:
	FUNC3(&dobj->obj);
	return ret;
}