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
struct drm_master {int /*<<< orphan*/  lock; } ;
struct drm_lock {scalar_t__ context; } ;
struct drm_file {struct drm_master* master; } ;
struct drm_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DRIVER_LEGACY ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ DRM_KERNEL_CONTEXT ; 
 int EINVAL ; 
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  current ; 
 int /*<<< orphan*/  FUNC1 (struct drm_device*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

int FUNC4(struct drm_device *dev, void *data, struct drm_file *file_priv)
{
	struct drm_lock *lock = data;
	struct drm_master *master = file_priv->master;

	if (!FUNC1(dev, DRIVER_LEGACY))
		return -EOPNOTSUPP;

	if (lock->context == DRM_KERNEL_CONTEXT) {
		FUNC0("Process %d using kernel context %d\n",
			  FUNC3(current), lock->context);
		return -EINVAL;
	}

	if (FUNC2(&master->lock, lock->context)) {
		/* FIXME: Should really bail out here. */
	}

	return 0;
}