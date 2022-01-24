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
struct TYPE_2__ {scalar_t__ count; } ;
struct drm_device {int dummy; } ;
struct udl_device {TYPE_1__ urbs; int /*<<< orphan*/  udev; int /*<<< orphan*/  gem_lock; struct drm_device drm; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  MAX_TRANSFER ; 
 int /*<<< orphan*/  WRITES_IN_FLIGHT ; 
 int /*<<< orphan*/  FUNC2 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct drm_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct drm_device*) ; 
 int FUNC7 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC8 (struct drm_device*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (struct udl_device*) ; 

int FUNC10(struct udl_device *udl)
{
	struct drm_device *dev = &udl->drm;
	int ret = -ENOMEM;

	FUNC0("\n");

	FUNC3(&udl->gem_lock);

	if (!FUNC8(dev, udl->udev)) {
		ret = -ENODEV;
		FUNC1("firmware not recognized. Assume incompatible device\n");
		goto err;
	}

	if (FUNC9(udl))
		FUNC1("Selecting channel failed\n");

	if (!FUNC4(dev, WRITES_IN_FLIGHT, MAX_TRANSFER)) {
		FUNC1("udl_alloc_urb_list failed\n");
		goto err;
	}

	FUNC0("\n");
	ret = FUNC7(dev);
	if (ret)
		goto err;

	ret = FUNC5(dev);
	if (ret)
		goto err;

	FUNC2(dev);

	return 0;

err:
	if (udl->urbs.count)
		FUNC6(dev);
	FUNC1("%d\n", ret);
	return ret;
}