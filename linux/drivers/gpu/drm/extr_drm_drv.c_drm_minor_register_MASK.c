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
struct drm_minor {int /*<<< orphan*/  index; int /*<<< orphan*/  kdev; } ;
struct drm_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_minor*) ; 
 int FUNC4 (struct drm_minor*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  drm_debugfs_root ; 
 struct drm_minor** FUNC5 (struct drm_device*,unsigned int) ; 
 int /*<<< orphan*/  drm_minor_lock ; 
 int /*<<< orphan*/  drm_minors_idr ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,struct drm_minor*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC9(struct drm_device *dev, unsigned int type)
{
	struct drm_minor *minor;
	unsigned long flags;
	int ret;

	FUNC0("\n");

	minor = *FUNC5(dev, type);
	if (!minor)
		return 0;

	ret = FUNC4(minor, minor->index, drm_debugfs_root);
	if (ret) {
		FUNC1("DRM: Failed to initialize /sys/kernel/debug/dri.\n");
		goto err_debugfs;
	}

	ret = FUNC2(minor->kdev);
	if (ret)
		goto err_debugfs;

	/* replace NULL with @minor so lookups will succeed from now on */
	FUNC7(&drm_minor_lock, flags);
	FUNC6(&drm_minors_idr, minor, minor->index);
	FUNC8(&drm_minor_lock, flags);

	FUNC0("new minor registered %d\n", minor->index);
	return 0;

err_debugfs:
	FUNC3(minor);
	return ret;
}