#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct ib_device_modify {int /*<<< orphan*/  sys_image_guid; int /*<<< orphan*/  node_desc; } ;
struct ib_device {int /*<<< orphan*/  node_desc; } ;
struct TYPE_4__ {int /*<<< orphan*/  port_mutex; int /*<<< orphan*/  sys_image_guid; int /*<<< orphan*/  desc_lock; TYPE_1__* pdev; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EOPNOTSUPP ; 
 int IB_DEVICE_MODIFY_NODE_DESC ; 
 int IB_DEVICE_MODIFY_SYS_IMAGE_GUID ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 TYPE_2__* FUNC7 (struct ib_device*) ; 

int FUNC8(struct ib_device *ibdev, int mask,
			 struct ib_device_modify *props)
{
	unsigned long flags;

	if (mask & ~(IB_DEVICE_MODIFY_SYS_IMAGE_GUID |
		     IB_DEVICE_MODIFY_NODE_DESC)) {
		FUNC1(&FUNC7(ibdev)->pdev->dev,
			 "unsupported device modify mask %#x\n", mask);
		return -EOPNOTSUPP;
	}

	if (mask & IB_DEVICE_MODIFY_NODE_DESC) {
		FUNC5(&FUNC7(ibdev)->desc_lock, flags);
		FUNC2(ibdev->node_desc, props->node_desc, 64);
		FUNC6(&FUNC7(ibdev)->desc_lock, flags);
	}

	if (mask & IB_DEVICE_MODIFY_SYS_IMAGE_GUID) {
		FUNC3(&FUNC7(ibdev)->port_mutex);
		FUNC7(ibdev)->sys_image_guid =
			FUNC0(props->sys_image_guid);
		FUNC4(&FUNC7(ibdev)->port_mutex);
	}

	return 0;
}