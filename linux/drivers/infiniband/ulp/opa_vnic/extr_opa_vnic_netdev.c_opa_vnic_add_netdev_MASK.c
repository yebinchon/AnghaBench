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
typedef  void* u8 ;
struct rdma_netdev {int /*<<< orphan*/  (* free_rdma_netdev ) (struct net_device*) ;void* port_num; struct ib_device* hca; struct opa_vnic_adapter* clnt_priv; } ;
struct opa_vnic_adapter {int /*<<< orphan*/  mactbl_lock; int /*<<< orphan*/  lock; int /*<<< orphan*/  stats_lock; int /*<<< orphan*/ * rn_ops; void* vport_num; void* port_num; struct ib_device* ibdev; struct net_device* netdev; } ;
struct net_device {int /*<<< orphan*/  hard_header_len; int /*<<< orphan*/  priv_flags; int /*<<< orphan*/ * netdev_ops; } ;
struct TYPE_4__ {int /*<<< orphan*/  parent; } ;
struct TYPE_3__ {struct net_device* (* alloc_rdma_netdev ) (struct ib_device*,void*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;
struct ib_device {TYPE_2__ dev; TYPE_1__ ops; } ;

/* Variables and functions */
 int ENOMEM ; 
 struct opa_vnic_adapter* FUNC0 (struct net_device*) ; 
 struct opa_vnic_adapter* FUNC1 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IFF_LIVE_ADDR_CHANGE ; 
 scalar_t__ FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  NET_NAME_UNKNOWN ; 
 scalar_t__ OPA_VNIC_SKB_HEADROOM ; 
 int /*<<< orphan*/  RDMA_NETDEV_OPA_VNIC ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ether_setup ; 
 int /*<<< orphan*/  FUNC4 (struct opa_vnic_adapter*) ; 
 struct opa_vnic_adapter* FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 struct rdma_netdev* FUNC8 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC9 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC10 (struct net_device*) ; 
 int /*<<< orphan*/  opa_netdev_ops ; 
 int /*<<< orphan*/  FUNC11 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC12 (struct opa_vnic_adapter*) ; 
 int FUNC13 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 struct net_device* FUNC15 (struct ib_device*,void*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC17 (char*) ; 

struct opa_vnic_adapter *FUNC18(struct ib_device *ibdev,
					     u8 port_num, u8 vport_num)
{
	struct opa_vnic_adapter *adapter;
	struct net_device *netdev;
	struct rdma_netdev *rn;
	int rc;

	netdev = ibdev->ops.alloc_rdma_netdev(ibdev, port_num,
					      RDMA_NETDEV_OPA_VNIC,
					      "veth%d", NET_NAME_UNKNOWN,
					      ether_setup);
	if (!netdev)
		return FUNC1(-ENOMEM);
	else if (FUNC2(netdev))
		return FUNC0(netdev);

	rn = FUNC8(netdev);
	adapter = FUNC5(sizeof(*adapter), GFP_KERNEL);
	if (!adapter) {
		rc = -ENOMEM;
		goto adapter_err;
	}

	rn->clnt_priv = adapter;
	rn->hca = ibdev;
	rn->port_num = port_num;
	adapter->netdev = netdev;
	adapter->ibdev = ibdev;
	adapter->port_num = port_num;
	adapter->vport_num = vport_num;
	adapter->rn_ops = netdev->netdev_ops;

	netdev->netdev_ops = &opa_netdev_ops;
	netdev->priv_flags |= IFF_LIVE_ADDR_CHANGE;
	netdev->hard_header_len += OPA_VNIC_SKB_HEADROOM;
	FUNC7(&adapter->lock);
	FUNC7(&adapter->mactbl_lock);
	FUNC14(&adapter->stats_lock);

	FUNC3(netdev, ibdev->dev.parent);

	FUNC11(netdev);

	FUNC12(adapter);

	rc = FUNC13(netdev);
	if (rc)
		goto netdev_err;

	FUNC9(netdev);
	FUNC10(netdev);
	FUNC17("initialized\n");

	return adapter;
netdev_err:
	FUNC6(&adapter->lock);
	FUNC6(&adapter->mactbl_lock);
	FUNC4(adapter);
adapter_err:
	rn->free_rdma_netdev(netdev);

	return FUNC1(rc);
}