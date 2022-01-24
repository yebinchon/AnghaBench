#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct drm_device {TYPE_1__* driver; } ;
struct drm_client_funcs {int /*<<< orphan*/  owner; } ;
struct drm_client_dev {char const* name; struct drm_client_funcs const* funcs; struct drm_device* dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  dumb_create; } ;

/* Variables and functions */
 int /*<<< orphan*/  DRIVER_MODESET ; 
 int ENODEV ; 
 int EOPNOTSUPP ; 
 int FUNC0 (struct drm_client_dev*) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_client_dev*) ; 
 int FUNC2 (struct drm_client_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

int FUNC7(struct drm_device *dev, struct drm_client_dev *client,
		    const char *name, const struct drm_client_funcs *funcs)
{
	int ret;

	if (!FUNC3(dev, DRIVER_MODESET) || !dev->driver->dumb_create)
		return -EOPNOTSUPP;

	if (funcs && !FUNC6(funcs->owner))
		return -ENODEV;

	client->dev = dev;
	client->name = name;
	client->funcs = funcs;

	ret = FUNC0(client);
	if (ret)
		goto err_put_module;

	ret = FUNC2(client);
	if (ret)
		goto err_free;

	FUNC4(dev);

	return 0;

err_free:
	FUNC1(client);
err_put_module:
	if (funcs)
		FUNC5(funcs->owner);

	return ret;
}