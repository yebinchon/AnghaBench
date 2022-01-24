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
typedef  int /*<<< orphan*/  u8 ;
struct sockaddr {scalar_t__ sa_family; } ;
struct TYPE_6__ {int hoplimit; } ;
struct rdma_addr {TYPE_3__ dev_addr; int /*<<< orphan*/  dst_addr; int /*<<< orphan*/  src_addr; } ;
struct rdma_route {int num_paths; struct cma_work* path_rec; struct rdma_addr addr; } ;
struct TYPE_5__ {size_t port_num; struct rdma_route route; } ;
struct rdma_id_private {TYPE_2__ id; int /*<<< orphan*/  tos; scalar_t__ tos_set; TYPE_1__* cma_dev; } ;
struct net_device {int /*<<< orphan*/  mtu; } ;
struct cma_work {int hop_limit; int reversible; int /*<<< orphan*/  work; int /*<<< orphan*/  mtu; int /*<<< orphan*/  packet_life_time; void* packet_life_time_selector; int /*<<< orphan*/  rate; void* rate_selector; int /*<<< orphan*/  traffic_class; int /*<<< orphan*/  sl; void* mtu_selector; int /*<<< orphan*/  pkey; int /*<<< orphan*/  dgid; int /*<<< orphan*/  sgid; } ;
struct TYPE_4__ {int /*<<< orphan*/  device; int /*<<< orphan*/ * default_roce_tos; } ;

/* Variables and functions */
 scalar_t__ AF_IB ; 
 int /*<<< orphan*/  CMA_IBOE_PACKET_LIFETIME ; 
 int EINVAL ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 void* IB_SA_EQ ; 
 struct net_device* FUNC0 (struct rdma_id_private*) ; 
 int /*<<< orphan*/  FUNC1 (struct cma_work*,struct rdma_id_private*) ; 
 int /*<<< orphan*/  cma_wq ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct net_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct cma_work*) ; 
 void* FUNC8 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct sockaddr*,int /*<<< orphan*/ *) ; 
 size_t FUNC11 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC12(struct rdma_id_private *id_priv)
{
	struct rdma_route *route = &id_priv->id.route;
	struct rdma_addr *addr = &route->addr;
	struct cma_work *work;
	int ret;
	struct net_device *ndev;

	u8 default_roce_tos = id_priv->cma_dev->default_roce_tos[id_priv->id.port_num -
					FUNC11(id_priv->cma_dev->device)];
	u8 tos = id_priv->tos_set ? id_priv->tos : default_roce_tos;


	work = FUNC8(sizeof *work, GFP_KERNEL);
	if (!work)
		return -ENOMEM;

	route->path_rec = FUNC8(sizeof *route->path_rec, GFP_KERNEL);
	if (!route->path_rec) {
		ret = -ENOMEM;
		goto err1;
	}

	route->num_paths = 1;

	ndev = FUNC0(id_priv);
	if (!ndev) {
		ret = -ENODEV;
		goto err2;
	}

	FUNC10((struct sockaddr *)&id_priv->id.route.addr.src_addr,
		    &route->path_rec->sgid);
	FUNC10((struct sockaddr *)&id_priv->id.route.addr.dst_addr,
		    &route->path_rec->dgid);

	if (((struct sockaddr *)&id_priv->id.route.addr.dst_addr)->sa_family != AF_IB)
		/* TODO: get the hoplimit from the inet/inet6 device */
		route->path_rec->hop_limit = addr->dev_addr.hoplimit;
	else
		route->path_rec->hop_limit = 1;
	route->path_rec->reversible = 1;
	route->path_rec->pkey = FUNC2(0xffff);
	route->path_rec->mtu_selector = IB_SA_EQ;
	route->path_rec->sl = FUNC6(ndev, tos);
	route->path_rec->traffic_class = tos;
	route->path_rec->mtu = FUNC4(ndev->mtu);
	route->path_rec->rate_selector = IB_SA_EQ;
	route->path_rec->rate = FUNC5(ndev);
	FUNC3(ndev);
	route->path_rec->packet_life_time_selector = IB_SA_EQ;
	route->path_rec->packet_life_time = CMA_IBOE_PACKET_LIFETIME;
	if (!route->path_rec->mtu) {
		ret = -EINVAL;
		goto err2;
	}

	FUNC1(work, id_priv);
	FUNC9(cma_wq, &work->work);

	return 0;

err2:
	FUNC7(route->path_rec);
	route->path_rec = NULL;
err1:
	FUNC7(work);
	return ret;
}