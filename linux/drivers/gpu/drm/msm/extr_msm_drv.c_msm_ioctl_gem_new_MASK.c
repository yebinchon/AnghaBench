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
struct drm_msm_gem_new {int flags; int /*<<< orphan*/  handle; int /*<<< orphan*/  size; } ;
struct drm_file {int dummy; } ;
struct drm_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int EINVAL ; 
 int MSM_BO_FLAGS ; 
 int FUNC1 (struct drm_device*,struct drm_file*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC2(struct drm_device *dev, void *data,
		struct drm_file *file)
{
	struct drm_msm_gem_new *args = data;

	if (args->flags & ~MSM_BO_FLAGS) {
		FUNC0("invalid flags: %08x\n", args->flags);
		return -EINVAL;
	}

	return FUNC1(dev, file, args->size,
			args->flags, &args->handle, NULL);
}