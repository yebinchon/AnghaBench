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
struct host1x_device {int /*<<< orphan*/  dev; } ;
struct drm_driver {int dummy; } ;
struct drm_device {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct drm_device*) ; 
 int FUNC1 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct drm_device*) ; 
 struct drm_device* FUNC3 (struct drm_driver*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct drm_device*) ; 
 int FUNC5 (struct drm_device*,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ *,char*,int) ; 
 struct drm_driver tegra_drm_driver ; 

__attribute__((used)) static int FUNC7(struct host1x_device *dev)
{
	struct drm_driver *driver = &tegra_drm_driver;
	struct drm_device *drm;
	int err;

	drm = FUNC3(driver, &dev->dev);
	if (FUNC0(drm))
		return FUNC1(drm);

	FUNC2(&dev->dev, drm);

	err = FUNC6(NULL, "tegradrmfb", false);
	if (err < 0)
		goto put;

	err = FUNC5(drm, 0);
	if (err < 0)
		goto put;

	return 0;

put:
	FUNC4(drm);
	return err;
}