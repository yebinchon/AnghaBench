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
typedef  scalar_t__ u32 ;
struct ib_device {int /*<<< orphan*/  unreg_completion; int /*<<< orphan*/  index; int /*<<< orphan*/  refcount; } ;

/* Variables and functions */
 int /*<<< orphan*/  DEVICE_REGISTERED ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  clients_rwsem ; 
 int /*<<< orphan*/  devices ; 
 int /*<<< orphan*/  devices_rwsem ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ highest_client_id ; 
 int /*<<< orphan*/  FUNC3 (struct ib_device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct ib_device*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (struct ib_device*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC11(struct ib_device *device)
{
	u32 cid;

	FUNC0(!FUNC4(&device->refcount));

	FUNC2(&devices_rwsem);
	FUNC10(&devices, device->index, DEVICE_REGISTERED);
	FUNC8(&devices_rwsem);

	/*
	 * Remove clients in LIFO order, see assign_client_id. This could be
	 * more efficient if xarray learns to reverse iterate. Since no new
	 * clients can be added to this ib_device past this point we only need
	 * the maximum possible client_id value here.
	 */
	FUNC1(&clients_rwsem);
	cid = highest_client_id;
	FUNC7(&clients_rwsem);
	while (cid) {
		cid--;
		FUNC5(device, cid);
	}

	/* Pairs with refcount_set in enable_device */
	FUNC3(device);
	FUNC9(&device->unreg_completion);

	/*
	 * compat devices must be removed after device refcount drops to zero.
	 * Otherwise init_net() may add more compatdevs after removing compat
	 * devices and before device is disabled.
	 */
	FUNC6(device);
}