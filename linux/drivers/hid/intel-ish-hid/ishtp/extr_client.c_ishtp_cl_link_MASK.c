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
struct ishtp_device {scalar_t__ open_handle_count; scalar_t__ dev_state; int /*<<< orphan*/  device_lock; int /*<<< orphan*/  cl_list_lock; int /*<<< orphan*/  host_clients_map; int /*<<< orphan*/  cl_list; } ;
struct ishtp_cl {int host_client_id; int /*<<< orphan*/  state; int /*<<< orphan*/  link; TYPE_1__* device; struct ishtp_device* dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EINVAL ; 
 int EMFILE ; 
 int ENODEV ; 
 int ENOENT ; 
 int ISHTP_CLIENTS_MAX ; 
 int /*<<< orphan*/  ISHTP_CL_INITIALIZING ; 
 scalar_t__ ISHTP_DEV_ENABLED ; 
 scalar_t__ ISHTP_MAX_OPEN_HANDLE_COUNT ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int) ; 
 int FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 

int FUNC7(struct ishtp_cl *cl)
{
	struct ishtp_device *dev;
	unsigned long flags, flags_cl;
	int id, ret = 0;

	if (FUNC0(!cl || !cl->dev))
		return -EINVAL;

	dev = cl->dev;

	FUNC5(&dev->device_lock, flags);

	if (dev->open_handle_count >= ISHTP_MAX_OPEN_HANDLE_COUNT) {
		ret = -EMFILE;
		goto unlock_dev;
	}

	id = FUNC2(dev->host_clients_map, ISHTP_CLIENTS_MAX);

	if (id >= ISHTP_CLIENTS_MAX) {
		FUNC6(&dev->device_lock, flags);
		FUNC1(&cl->device->dev, "id exceeded %d", ISHTP_CLIENTS_MAX);
		return -ENOENT;
	}

	dev->open_handle_count++;
	cl->host_client_id = id;
	FUNC5(&dev->cl_list_lock, flags_cl);
	if (dev->dev_state != ISHTP_DEV_ENABLED) {
		ret = -ENODEV;
		goto unlock_cl;
	}
	FUNC3(&cl->link, &dev->cl_list);
	FUNC4(id, dev->host_clients_map);
	cl->state = ISHTP_CL_INITIALIZING;

unlock_cl:
	FUNC6(&dev->cl_list_lock, flags_cl);
unlock_dev:
	FUNC6(&dev->device_lock, flags);
	return ret;
}