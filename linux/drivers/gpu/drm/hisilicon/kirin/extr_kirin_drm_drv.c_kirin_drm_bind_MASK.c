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
struct kirin_drm_data {scalar_t__ register_connects; int /*<<< orphan*/  driver; } ;
struct drm_device {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ FUNC0 (struct drm_device*) ; 
 int FUNC1 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,struct drm_device*) ; 
 struct drm_device* FUNC3 (int /*<<< orphan*/ ,struct device*) ; 
 int /*<<< orphan*/  FUNC4 (struct drm_device*) ; 
 int FUNC5 (struct drm_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct drm_device*,int) ; 
 int FUNC8 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC9 (struct drm_device*) ; 
 int FUNC10 (struct drm_device*,struct kirin_drm_data*) ; 
 scalar_t__ FUNC11 (struct device*) ; 

__attribute__((used)) static int FUNC12(struct device *dev)
{
	struct kirin_drm_data *driver_data;
	struct drm_device *drm_dev;
	int ret;

	driver_data = (struct kirin_drm_data *)FUNC11(dev);
	if (!driver_data)
		return -EINVAL;

	drm_dev = FUNC3(driver_data->driver, dev);
	if (FUNC0(drm_dev))
		return FUNC1(drm_dev);
	FUNC2(dev, drm_dev);

	/* display controller init */
	ret = FUNC10(drm_dev, driver_data);
	if (ret)
		goto err_drm_dev_put;

	ret = FUNC5(drm_dev, 0);
	if (ret)
		goto err_kms_cleanup;

	FUNC7(drm_dev, 32);

	/* connectors should be registered after drm device register */
	if (driver_data->register_connects) {
		ret = FUNC8(drm_dev);
		if (ret)
			goto err_drm_dev_unregister;
	}

	return 0;

err_drm_dev_unregister:
	FUNC6(drm_dev);
err_kms_cleanup:
	FUNC9(drm_dev);
err_drm_dev_put:
	FUNC4(drm_dev);

	return ret;
}