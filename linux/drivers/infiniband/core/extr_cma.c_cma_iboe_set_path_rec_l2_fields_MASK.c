#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  dst_dev_addr; int /*<<< orphan*/  network; int /*<<< orphan*/  bound_dev_if; int /*<<< orphan*/  net; } ;
struct rdma_addr {TYPE_3__ dev_addr; } ;
struct rdma_route {TYPE_4__* path_rec; struct rdma_addr addr; } ;
struct TYPE_5__ {int /*<<< orphan*/  port_num; int /*<<< orphan*/  device; struct rdma_route route; } ;
struct rdma_id_private {int /*<<< orphan*/  gid_type; TYPE_1__ id; } ;
struct net_device {int dummy; } ;
typedef  enum ib_gid_type { ____Placeholder_ib_gid_type } ib_gid_type ;
struct TYPE_6__ {int route_resolved; } ;
struct TYPE_8__ {TYPE_2__ roce; int /*<<< orphan*/  rec_type; } ;

/* Variables and functions */
 int IB_GID_TYPE_ROCE ; 
 int FUNC0 (int /*<<< orphan*/ ,unsigned long,int /*<<< orphan*/ ) ; 
 struct net_device* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 unsigned long FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_4__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct net_device *
FUNC6(struct rdma_id_private *id_priv)
{
	struct rdma_route *route = &id_priv->id.route;
	enum ib_gid_type gid_type = IB_GID_TYPE_ROCE;
	struct rdma_addr *addr = &route->addr;
	unsigned long supported_gids;
	struct net_device *ndev;

	if (!addr->dev_addr.bound_dev_if)
		return NULL;

	ndev = FUNC1(addr->dev_addr.net,
				addr->dev_addr.bound_dev_if);
	if (!ndev)
		return NULL;

	supported_gids = FUNC3(id_priv->id.device,
						    id_priv->id.port_num);
	gid_type = FUNC0(addr->dev_addr.network,
				      supported_gids,
				      id_priv->gid_type);
	/* Use the hint from IP Stack to select GID Type */
	if (gid_type < FUNC2(addr->dev_addr.network))
		gid_type = FUNC2(addr->dev_addr.network);
	route->path_rec->rec_type = FUNC4(gid_type);

	route->path_rec->roce.route_resolved = true;
	FUNC5(route->path_rec, addr->dev_addr.dst_dev_addr);
	return ndev;
}