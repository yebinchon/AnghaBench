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
struct TYPE_4__ {int /*<<< orphan*/  node_desc; } ;
struct TYPE_3__ {int /*<<< orphan*/  sys_image_guid; } ;
struct rxe_dev {TYPE_2__ ib_dev; TYPE_1__ attr; } ;
struct ib_device_modify {int /*<<< orphan*/  node_desc; int /*<<< orphan*/  sys_image_guid; } ;
struct ib_device {int dummy; } ;

/* Variables and functions */
 int IB_DEVICE_MODIFY_NODE_DESC ; 
 int IB_DEVICE_MODIFY_SYS_IMAGE_GUID ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 struct rxe_dev* FUNC2 (struct ib_device*) ; 

__attribute__((used)) static int FUNC3(struct ib_device *dev,
			     int mask, struct ib_device_modify *attr)
{
	struct rxe_dev *rxe = FUNC2(dev);

	if (mask & IB_DEVICE_MODIFY_SYS_IMAGE_GUID)
		rxe->attr.sys_image_guid = FUNC0(attr->sys_image_guid);

	if (mask & IB_DEVICE_MODIFY_NODE_DESC) {
		FUNC1(rxe->ib_dev.node_desc,
		       attr->node_desc, sizeof(rxe->ib_dev.node_desc));
	}

	return 0;
}