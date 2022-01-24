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
struct TYPE_2__ {int /*<<< orphan*/  (* dealloc_driver ) (struct ib_device*) ;} ;
struct ib_device {int /*<<< orphan*/  dev; int /*<<< orphan*/  refcount; int /*<<< orphan*/  client_data; int /*<<< orphan*/  compat_devs; int /*<<< orphan*/  index; TYPE_1__ ops; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  devices ; 
 int /*<<< orphan*/  devices_rwsem ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct ib_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct ib_device*) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct ib_device*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct ib_device* FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void FUNC11(struct ib_device *device)
{
	if (device->ops.dealloc_driver)
		device->ops.dealloc_driver(device);

	/*
	 * ib_unregister_driver() requires all devices to remain in the xarray
	 * while their ops are callable. The last op we call is dealloc_driver
	 * above.  This is needed to create a fence on op callbacks prior to
	 * allowing the driver module to unload.
	 */
	FUNC1(&devices_rwsem);
	if (FUNC10(&devices, device->index) == device)
		FUNC9(&devices, device->index);
	FUNC7(&devices_rwsem);

	/* Expedite releasing netdev references */
	FUNC2(device);

	FUNC0(!FUNC8(&device->compat_devs));
	FUNC0(!FUNC8(&device->client_data));
	FUNC0(FUNC5(&device->refcount));
	FUNC4(device);
	/* Balances with device_initialize */
	FUNC3(&device->dev);
}