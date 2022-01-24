#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct sockaddr {int dummy; } ;
struct rdma_dev_addr {int dummy; } ;
struct TYPE_8__ {struct rdma_dev_addr dev_addr; } ;
struct TYPE_9__ {TYPE_1__ addr; } ;
struct TYPE_10__ {scalar_t__ ps; int /*<<< orphan*/  port_num; TYPE_5__* device; TYPE_2__ route; } ;
struct rdma_id_private {TYPE_3__ id; int /*<<< orphan*/  qkey; } ;
struct ib_sa_mcmember_rec {scalar_t__ join_state; int /*<<< orphan*/  pkey; int /*<<< orphan*/  port_gid; int /*<<< orphan*/  qkey; int /*<<< orphan*/  mgid; } ;
struct TYPE_11__ {int /*<<< orphan*/  ib; } ;
struct cma_multicast {scalar_t__ join_state; TYPE_4__ multicast; int /*<<< orphan*/  addr; } ;
typedef  int ib_sa_comp_mask ;
struct TYPE_12__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int IB_SA_MCMEMBER_REC_FLOW_LABEL ; 
 int IB_SA_MCMEMBER_REC_HOP_LIMIT ; 
 int IB_SA_MCMEMBER_REC_JOIN_STATE ; 
 int IB_SA_MCMEMBER_REC_MGID ; 
 int IB_SA_MCMEMBER_REC_MTU ; 
 int IB_SA_MCMEMBER_REC_MTU_SELECTOR ; 
 int IB_SA_MCMEMBER_REC_PKEY ; 
 int IB_SA_MCMEMBER_REC_PORT_GID ; 
 int IB_SA_MCMEMBER_REC_QKEY ; 
 int IB_SA_MCMEMBER_REC_RATE ; 
 int IB_SA_MCMEMBER_REC_RATE_SELECTOR ; 
 int IB_SA_MCMEMBER_REC_SL ; 
 int IB_SA_MCMEMBER_REC_TRAFFIC_CLASS ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ RDMA_PS_IPOIB ; 
 int /*<<< orphan*/  SENDONLY_FULLMEMBER_JOIN ; 
 int /*<<< orphan*/  cma_ib_mc_handler ; 
 int /*<<< orphan*/  FUNC2 (struct rdma_id_private*,struct sockaddr*,int /*<<< orphan*/ *) ; 
 int FUNC3 (struct rdma_id_private*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct rdma_dev_addr*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct rdma_dev_addr*) ; 
 int FUNC9 (TYPE_5__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct ib_sa_mcmember_rec*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,TYPE_5__*,int /*<<< orphan*/ ,struct ib_sa_mcmember_rec*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct cma_multicast*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,TYPE_5__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct rdma_dev_addr*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  sa_client ; 

__attribute__((used)) static int FUNC13(struct rdma_id_private *id_priv,
				 struct cma_multicast *mc)
{
	struct ib_sa_mcmember_rec rec;
	struct rdma_dev_addr *dev_addr = &id_priv->id.route.addr.dev_addr;
	ib_sa_comp_mask comp_mask;
	int ret;

	FUNC7(dev_addr, &rec.mgid);
	ret = FUNC9(id_priv->id.device, id_priv->id.port_num,
				     &rec.mgid, &rec);
	if (ret)
		return ret;

	ret = FUNC3(id_priv, 0);
	if (ret)
		return ret;

	FUNC2(id_priv, (struct sockaddr *) &mc->addr, &rec.mgid);
	rec.qkey = FUNC5(id_priv->qkey);
	FUNC12(dev_addr, &rec.port_gid);
	rec.pkey = FUNC4(FUNC8(dev_addr));
	rec.join_state = mc->join_state;

	if ((rec.join_state == FUNC0(SENDONLY_FULLMEMBER_JOIN)) &&
	    (!FUNC11(&sa_client,
					     id_priv->id.device,
					     id_priv->id.port_num))) {
		FUNC6(
			&id_priv->id.device->dev,
			"RDMA CM: port %u Unable to multicast join: SM doesn't support Send Only Full Member option\n",
			id_priv->id.port_num);
		return -EOPNOTSUPP;
	}

	comp_mask = IB_SA_MCMEMBER_REC_MGID | IB_SA_MCMEMBER_REC_PORT_GID |
		    IB_SA_MCMEMBER_REC_PKEY | IB_SA_MCMEMBER_REC_JOIN_STATE |
		    IB_SA_MCMEMBER_REC_QKEY | IB_SA_MCMEMBER_REC_SL |
		    IB_SA_MCMEMBER_REC_FLOW_LABEL |
		    IB_SA_MCMEMBER_REC_TRAFFIC_CLASS;

	if (id_priv->id.ps == RDMA_PS_IPOIB)
		comp_mask |= IB_SA_MCMEMBER_REC_RATE |
			     IB_SA_MCMEMBER_REC_RATE_SELECTOR |
			     IB_SA_MCMEMBER_REC_MTU_SELECTOR |
			     IB_SA_MCMEMBER_REC_MTU |
			     IB_SA_MCMEMBER_REC_HOP_LIMIT;

	mc->multicast.ib = FUNC10(&sa_client, id_priv->id.device,
						id_priv->id.port_num, &rec,
						comp_mask, GFP_KERNEL,
						cma_ib_mc_handler, mc);
	return FUNC1(mc->multicast.ib);
}