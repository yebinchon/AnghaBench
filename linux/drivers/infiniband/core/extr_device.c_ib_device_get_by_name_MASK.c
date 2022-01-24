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
struct TYPE_2__ {int driver_id; } ;
struct ib_device {TYPE_1__ ops; } ;
typedef  enum rdma_driver_id { ____Placeholder_rdma_driver_id } rdma_driver_id ;

/* Variables and functions */
 int RDMA_DRIVER_UNKNOWN ; 
 struct ib_device* FUNC0 (char const*) ; 
 int /*<<< orphan*/  devices_rwsem ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct ib_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

struct ib_device *FUNC4(const char *name,
					enum rdma_driver_id driver_id)
{
	struct ib_device *device;

	FUNC1(&devices_rwsem);
	device = FUNC0(name);
	if (device && driver_id != RDMA_DRIVER_UNKNOWN &&
	    device->ops.driver_id != driver_id)
		device = NULL;

	if (device) {
		if (!FUNC2(device))
			device = NULL;
	}
	FUNC3(&devices_rwsem);
	return device;
}