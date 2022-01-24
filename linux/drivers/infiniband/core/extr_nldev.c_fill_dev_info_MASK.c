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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u64 ;
struct sk_buff {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  sys_image_guid; int /*<<< orphan*/  device_cap_flags; } ;
struct ib_device {int /*<<< orphan*/  use_cq_dim; int /*<<< orphan*/  node_type; TYPE_1__ attrs; int /*<<< orphan*/  node_guid; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int EMSGSIZE ; 
 int IB_FW_VERSION_NAME_MAX ; 
 int /*<<< orphan*/  RDMA_NLDEV_ATTR_CAP_FLAGS ; 
 int /*<<< orphan*/  RDMA_NLDEV_ATTR_DEV_DIM ; 
 int /*<<< orphan*/  RDMA_NLDEV_ATTR_DEV_NODE_TYPE ; 
 int /*<<< orphan*/  RDMA_NLDEV_ATTR_DEV_PROTOCOL ; 
 int /*<<< orphan*/  RDMA_NLDEV_ATTR_FW_VERSION ; 
 int /*<<< orphan*/  RDMA_NLDEV_ATTR_NODE_GUID ; 
 int /*<<< orphan*/  RDMA_NLDEV_ATTR_PAD ; 
 int /*<<< orphan*/  RDMA_NLDEV_ATTR_PORT_INDEX ; 
 int /*<<< orphan*/  RDMA_NLDEV_ATTR_SYS_IMAGE_GUID ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct sk_buff*,struct ib_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct ib_device*,char*) ; 
 int FUNC4 (struct sk_buff*,int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC5 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (struct ib_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct ib_device*) ; 
 scalar_t__ FUNC10 (struct ib_device*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (struct ib_device*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (struct ib_device*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC13 (struct ib_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct ib_device*) ; 
 scalar_t__ FUNC15 (char*) ; 

__attribute__((used)) static int FUNC16(struct sk_buff *msg, struct ib_device *device)
{
	char fw[IB_FW_VERSION_NAME_MAX];
	int ret = 0;
	u8 port;

	if (FUNC2(msg, device))
		return -EMSGSIZE;

	if (FUNC5(msg, RDMA_NLDEV_ATTR_PORT_INDEX, FUNC9(device)))
		return -EMSGSIZE;

	FUNC0(sizeof(device->attrs.device_cap_flags) != sizeof(u64));
	if (FUNC6(msg, RDMA_NLDEV_ATTR_CAP_FLAGS,
			      device->attrs.device_cap_flags,
			      RDMA_NLDEV_ATTR_PAD))
		return -EMSGSIZE;

	FUNC3(device, fw);
	/* Device without FW has strlen(fw) = 0 */
	if (FUNC15(fw) && FUNC4(msg, RDMA_NLDEV_ATTR_FW_VERSION, fw))
		return -EMSGSIZE;

	if (FUNC6(msg, RDMA_NLDEV_ATTR_NODE_GUID,
			      FUNC1(device->node_guid),
			      RDMA_NLDEV_ATTR_PAD))
		return -EMSGSIZE;
	if (FUNC6(msg, RDMA_NLDEV_ATTR_SYS_IMAGE_GUID,
			      FUNC1(device->attrs.sys_image_guid),
			      RDMA_NLDEV_ATTR_PAD))
		return -EMSGSIZE;
	if (FUNC7(msg, RDMA_NLDEV_ATTR_DEV_NODE_TYPE, device->node_type))
		return -EMSGSIZE;
	if (FUNC7(msg, RDMA_NLDEV_ATTR_DEV_DIM, device->use_cq_dim))
		return -EMSGSIZE;

	/*
	 * Link type is determined on first port and mlx4 device
	 * which can potentially have two different link type for the same
	 * IB device is considered as better to be avoided in the future,
	 */
	port = FUNC14(device);
	if (FUNC8(device, port))
		ret = FUNC4(msg, RDMA_NLDEV_ATTR_DEV_PROTOCOL, "opa");
	else if (FUNC10(device, port))
		ret = FUNC4(msg, RDMA_NLDEV_ATTR_DEV_PROTOCOL, "ib");
	else if (FUNC11(device, port))
		ret = FUNC4(msg, RDMA_NLDEV_ATTR_DEV_PROTOCOL, "iw");
	else if (FUNC12(device, port))
		ret = FUNC4(msg, RDMA_NLDEV_ATTR_DEV_PROTOCOL, "roce");
	else if (FUNC13(device, port))
		ret = FUNC4(msg, RDMA_NLDEV_ATTR_DEV_PROTOCOL,
				     "usnic");
	return ret;
}