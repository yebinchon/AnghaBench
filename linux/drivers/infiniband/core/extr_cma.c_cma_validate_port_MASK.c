#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  union ib_gid {int dummy; } ib_gid ;
typedef  int /*<<< orphan*/  u8 ;
struct rdma_dev_addr {int bound_dev_if; int dev_type; int /*<<< orphan*/  net; } ;
struct TYPE_4__ {struct rdma_dev_addr dev_addr; } ;
struct TYPE_5__ {TYPE_1__ addr; } ;
struct TYPE_6__ {TYPE_2__ route; } ;
struct rdma_id_private {TYPE_3__ id; } ;
struct net_device {int dummy; } ;
struct ib_gid_attr {int dummy; } ;
struct ib_device {int dummy; } ;
typedef  enum ib_gid_type { ____Placeholder_ib_gid_type } ib_gid_type ;

/* Variables and functions */
 int ARPHRD_ETHER ; 
 int ARPHRD_INFINIBAND ; 
 int /*<<< orphan*/  ENODEV ; 
 struct ib_gid_attr const* FUNC0 (int /*<<< orphan*/ ) ; 
 int IB_GID_TYPE_IB ; 
 struct net_device* FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct ib_device*,int /*<<< orphan*/ ) ; 
 struct ib_gid_attr* FUNC4 (struct ib_device*,union ib_gid*,int,int /*<<< orphan*/ ,struct net_device*) ; 
 scalar_t__ FUNC5 (struct ib_device*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (struct ib_device*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static const struct ib_gid_attr *
FUNC7(struct ib_device *device, u8 port,
		  enum ib_gid_type gid_type,
		  union ib_gid *gid,
		  struct rdma_id_private *id_priv)
{
	struct rdma_dev_addr *dev_addr = &id_priv->id.route.addr.dev_addr;
	int bound_if_index = dev_addr->bound_dev_if;
	const struct ib_gid_attr *sgid_attr;
	int dev_type = dev_addr->dev_type;
	struct net_device *ndev = NULL;

	if (!FUNC3(device, id_priv->id.route.addr.dev_addr.net))
		return FUNC0(-ENODEV);

	if ((dev_type == ARPHRD_INFINIBAND) && !FUNC5(device, port))
		return FUNC0(-ENODEV);

	if ((dev_type != ARPHRD_INFINIBAND) && FUNC5(device, port))
		return FUNC0(-ENODEV);

	if (dev_type == ARPHRD_ETHER && FUNC6(device, port)) {
		ndev = FUNC1(dev_addr->net, bound_if_index);
		if (!ndev)
			return FUNC0(-ENODEV);
	} else {
		gid_type = IB_GID_TYPE_IB;
	}

	sgid_attr = FUNC4(device, gid, gid_type, port, ndev);
	if (ndev)
		FUNC2(ndev);
	return sgid_attr;
}