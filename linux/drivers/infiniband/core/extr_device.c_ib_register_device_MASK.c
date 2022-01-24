#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  kobj; } ;
struct TYPE_6__ {void (* dealloc_driver ) (struct ib_device*) ;} ;
struct ib_device {TYPE_2__ dev; TYPE_1__ ops; } ;

/* Variables and functions */
 int /*<<< orphan*/  KOBJ_ADD ; 
 int /*<<< orphan*/  FUNC0 (struct ib_device*) ; 
 int FUNC1 (struct ib_device*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,char*) ; 
 int FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 int FUNC6 (struct ib_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct ib_device*) ; 
 int FUNC8 (struct ib_device*) ; 
 int /*<<< orphan*/  FUNC9 (struct ib_device*) ; 
 int /*<<< orphan*/  FUNC10 (struct ib_device*) ; 
 int FUNC11 (struct ib_device*) ; 
 int /*<<< orphan*/  FUNC12 (struct ib_device*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct ib_device*) ; 
 int FUNC15 (struct ib_device*) ; 

int FUNC16(struct ib_device *device, const char *name)
{
	int ret;

	ret = FUNC1(device, name);
	if (ret)
		return ret;

	ret = FUNC15(device);
	if (ret)
		return ret;

	ret = FUNC8(device);
	if (ret) {
		FUNC3(&device->dev,
			 "Couldn't set up InfiniBand P_Key/GID cache\n");
		return ret;
	}

	FUNC10(device);

	FUNC14(device);

	/*
	 * Ensure that ADD uevent is not fired because it
	 * is too early amd device is not initialized yet.
	 */
	FUNC2(&device->dev, true);
	ret = FUNC4(&device->dev);
	if (ret)
		goto cg_cleanup;

	ret = FUNC11(device);
	if (ret) {
		FUNC3(&device->dev,
			 "Couldn't register device with driver model\n");
		goto dev_cleanup;
	}

	ret = FUNC6(device);
	FUNC2(&device->dev, false);
	/* Mark for userspace that device is ready */
	FUNC13(&device->dev.kobj, KOBJ_ADD);
	if (ret) {
		void (*dealloc_fn)(struct ib_device *);

		/*
		 * If we hit this error flow then we don't want to
		 * automatically dealloc the device since the caller is
		 * expected to call ib_dealloc_device() after
		 * ib_register_device() fails. This is tricky due to the
		 * possibility for a parallel unregistration along with this
		 * error flow. Since we have a refcount here we know any
		 * parallel flow is stopped in disable_device and will see the
		 * NULL pointers, causing the responsibility to
		 * ib_dealloc_device() to revert back to this thread.
		 */
		dealloc_fn = device->ops.dealloc_driver;
		device->ops.dealloc_driver = NULL;
		FUNC9(device);
		FUNC0(device);
		device->ops.dealloc_driver = dealloc_fn;
		return ret;
	}
	FUNC9(device);

	return 0;

dev_cleanup:
	FUNC5(&device->dev);
cg_cleanup:
	FUNC2(&device->dev, false);
	FUNC12(device);
	FUNC7(device);
	return ret;
}