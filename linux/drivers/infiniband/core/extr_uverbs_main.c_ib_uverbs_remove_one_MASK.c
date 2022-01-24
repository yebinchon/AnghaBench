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
struct ib_uverbs_device {int /*<<< orphan*/  dev; int /*<<< orphan*/  comp; int /*<<< orphan*/  refcount; int /*<<< orphan*/  devnum; int /*<<< orphan*/  cdev; } ;
struct TYPE_2__ {scalar_t__ disassociate_ucontext; } ;
struct ib_device {TYPE_1__ ops; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct ib_uverbs_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct ib_uverbs_device*,struct ib_device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  uverbs_ida ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(struct ib_device *device, void *client_data)
{
	struct ib_uverbs_device *uverbs_dev = client_data;
	int wait_clients = 1;

	if (!uverbs_dev)
		return;

	FUNC1(&uverbs_dev->cdev, &uverbs_dev->dev);
	FUNC4(&uverbs_ida, uverbs_dev->devnum);

	if (device->ops.disassociate_ucontext) {
		/* We disassociate HW resources and immediately return.
		 * Userspace will see a EIO errno for all future access.
		 * Upon returning, ib_device may be freed internally and is not
		 * valid any more.
		 * uverbs_device is still available until all clients close
		 * their files, then the uverbs device ref count will be zero
		 * and its resources will be freed.
		 * Note: At this point no more files can be opened since the
		 * cdev was deleted, however active clients can still issue
		 * commands and close their open files.
		 */
		FUNC3(uverbs_dev, device);
		wait_clients = 0;
	}

	if (FUNC0(&uverbs_dev->refcount))
		FUNC2(uverbs_dev);
	if (wait_clients)
		FUNC6(&uverbs_dev->comp);

	FUNC5(&uverbs_dev->dev);
}