#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_6__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct rdma_dev_net {int /*<<< orphan*/  id; int /*<<< orphan*/  net; } ;
struct TYPE_9__ {int /*<<< orphan*/  parent; } ;
struct TYPE_7__ {int /*<<< orphan*/  rdma_net; } ;
struct ib_device {int /*<<< orphan*/  compat_devs_mutex; int /*<<< orphan*/  compat_devs; TYPE_6__ dev; TYPE_1__ coredev; } ;
struct TYPE_8__ {int /*<<< orphan*/  release; int /*<<< orphan*/  parent; } ;
struct ib_core_device {TYPE_2__ dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  compatdev_release ; 
 int /*<<< orphan*/  FUNC0 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,char*,int /*<<< orphan*/ ) ; 
 int FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  ib_devices_shared_netns ; 
 int /*<<< orphan*/  FUNC4 (struct ib_core_device*) ; 
 int FUNC5 (struct ib_core_device*) ; 
 struct ib_core_device* FUNC6 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC12 (struct ib_core_device*,struct ib_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  rdma_nets_rwsem ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int FUNC14 (int /*<<< orphan*/ ) ; 
 struct ib_core_device* FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC17 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct ib_core_device*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC19(struct ib_device *device,
			      struct rdma_dev_net *rnet)
{
	struct ib_core_device *cdev;
	int ret;

	FUNC7(&rdma_nets_rwsem);
	if (!ib_devices_shared_netns)
		return 0;

	/*
	 * Create and add compat device in all namespaces other than where it
	 * is currently bound to.
	 */
	if (FUNC10(FUNC13(&rnet->net),
		   FUNC13(&device->coredev.rdma_net)))
		return 0;

	/*
	 * The first of init_net() or ib_register_device() to take the
	 * compat_devs_mutex wins and gets to add the device. Others will wait
	 * for completion here.
	 */
	FUNC8(&device->compat_devs_mutex);
	cdev = FUNC15(&device->compat_devs, rnet->id);
	if (cdev) {
		ret = 0;
		goto done;
	}
	ret = FUNC17(&device->compat_devs, rnet->id, GFP_KERNEL);
	if (ret)
		goto done;

	cdev = FUNC6(sizeof(*cdev), GFP_KERNEL);
	if (!cdev) {
		ret = -ENOMEM;
		goto cdev_err;
	}

	cdev->dev.parent = device->dev.parent;
	FUNC12(cdev, device, FUNC13(&rnet->net));
	cdev->dev.release = compatdev_release;
	FUNC1(&cdev->dev, "%s", FUNC0(&device->dev));

	ret = FUNC2(&cdev->dev);
	if (ret)
		goto add_err;
	ret = FUNC5(cdev);
	if (ret)
		goto port_err;

	ret = FUNC14(FUNC18(&device->compat_devs, rnet->id,
			      cdev, GFP_KERNEL));
	if (ret)
		goto insert_err;

	FUNC9(&device->compat_devs_mutex);
	return 0;

insert_err:
	FUNC4(cdev);
port_err:
	FUNC3(&cdev->dev);
add_err:
	FUNC11(&cdev->dev);
cdev_err:
	FUNC16(&device->compat_devs, rnet->id);
done:
	FUNC9(&device->compat_devs_mutex);
	return ret;
}