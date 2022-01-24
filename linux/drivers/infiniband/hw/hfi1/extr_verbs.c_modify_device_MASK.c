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
struct ib_device_modify {int /*<<< orphan*/  sys_image_guid; int /*<<< orphan*/  node_desc; } ;
struct ib_device {int /*<<< orphan*/  node_desc; } ;
struct hfi1_ibport {int dummy; } ;
struct hfi1_devdata {unsigned int num_pports; TYPE_1__* pport; } ;
struct TYPE_2__ {struct hfi1_ibport ibport_data; } ;

/* Variables and functions */
 int EOPNOTSUPP ; 
 int IB_DEVICE_MODIFY_NODE_DESC ; 
 int IB_DEVICE_MODIFY_SYS_IMAGE_GUID ; 
 int /*<<< orphan*/  IB_DEVICE_NODE_DESC_MAX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct hfi1_devdata* FUNC1 (struct ib_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct hfi1_ibport*) ; 
 int /*<<< orphan*/  FUNC3 (struct hfi1_ibport*) ; 
 int /*<<< orphan*/  ib_hfi1_sys_image_guid ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct ib_device *device,
			 int device_modify_mask,
			 struct ib_device_modify *device_modify)
{
	struct hfi1_devdata *dd = FUNC1(device);
	unsigned i;
	int ret;

	if (device_modify_mask & ~(IB_DEVICE_MODIFY_SYS_IMAGE_GUID |
				   IB_DEVICE_MODIFY_NODE_DESC)) {
		ret = -EOPNOTSUPP;
		goto bail;
	}

	if (device_modify_mask & IB_DEVICE_MODIFY_NODE_DESC) {
		FUNC4(device->node_desc, device_modify->node_desc,
		       IB_DEVICE_NODE_DESC_MAX);
		for (i = 0; i < dd->num_pports; i++) {
			struct hfi1_ibport *ibp = &dd->pport[i].ibport_data;

			FUNC2(ibp);
		}
	}

	if (device_modify_mask & IB_DEVICE_MODIFY_SYS_IMAGE_GUID) {
		ib_hfi1_sys_image_guid =
			FUNC0(device_modify->sys_image_guid);
		for (i = 0; i < dd->num_pports; i++) {
			struct hfi1_ibport *ibp = &dd->pport[i].ibport_data;

			FUNC3(ibp);
		}
	}

	ret = 0;

bail:
	return ret;
}