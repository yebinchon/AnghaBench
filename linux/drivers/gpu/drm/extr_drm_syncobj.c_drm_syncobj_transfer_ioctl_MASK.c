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
struct drm_syncobj_transfer {scalar_t__ dst_point; scalar_t__ pad; } ;
struct drm_file {int dummy; } ;
struct drm_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DRIVER_SYNCOBJ_TIMELINE ; 
 int EINVAL ; 
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  FUNC0 (struct drm_device*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct drm_file*,struct drm_syncobj_transfer*) ; 
 int FUNC2 (struct drm_file*,struct drm_syncobj_transfer*) ; 

int
FUNC3(struct drm_device *dev, void *data,
			   struct drm_file *file_private)
{
	struct drm_syncobj_transfer *args = data;
	int ret;

	if (!FUNC0(dev, DRIVER_SYNCOBJ_TIMELINE))
		return -EOPNOTSUPP;

	if (args->pad)
		return -EINVAL;

	if (args->dst_point)
		ret = FUNC2(file_private, args);
	else
		ret = FUNC1(file_private, args);

	return ret;
}