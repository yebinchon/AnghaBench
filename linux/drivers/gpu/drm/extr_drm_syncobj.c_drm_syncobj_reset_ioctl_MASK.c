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
typedef  size_t uint32_t ;
struct drm_syncobj_array {scalar_t__ pad; scalar_t__ count_handles; int /*<<< orphan*/  handles; } ;
struct drm_syncobj {int dummy; } ;
struct drm_file {int dummy; } ;
struct drm_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DRIVER_SYNCOBJ ; 
 int EINVAL ; 
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  FUNC0 (struct drm_device*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct drm_file*,int /*<<< orphan*/ ,scalar_t__,struct drm_syncobj***) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_syncobj**,size_t) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_syncobj*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

int
FUNC5(struct drm_device *dev, void *data,
			struct drm_file *file_private)
{
	struct drm_syncobj_array *args = data;
	struct drm_syncobj **syncobjs;
	uint32_t i;
	int ret;

	if (!FUNC0(dev, DRIVER_SYNCOBJ))
		return -EOPNOTSUPP;

	if (args->pad != 0)
		return -EINVAL;

	if (args->count_handles == 0)
		return -EINVAL;

	ret = FUNC1(file_private,
				     FUNC4(args->handles),
				     args->count_handles,
				     &syncobjs);
	if (ret < 0)
		return ret;

	for (i = 0; i < args->count_handles; i++)
		FUNC3(syncobjs[i], NULL);

	FUNC2(syncobjs, args->count_handles);

	return 0;
}