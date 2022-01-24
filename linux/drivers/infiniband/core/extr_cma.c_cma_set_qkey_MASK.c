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
typedef  scalar_t__ u32 ;
struct TYPE_4__ {int /*<<< orphan*/  dev_addr; } ;
struct TYPE_5__ {TYPE_1__ addr; } ;
struct TYPE_6__ {int ps; int /*<<< orphan*/  port_num; int /*<<< orphan*/  device; TYPE_2__ route; } ;
struct rdma_id_private {scalar_t__ qkey; TYPE_3__ id; } ;
struct ib_sa_mcmember_rec {int /*<<< orphan*/  qkey; int /*<<< orphan*/  mgid; } ;

/* Variables and functions */
 int EINVAL ; 
#define  RDMA_PS_IB 130 
#define  RDMA_PS_IPOIB 129 
#define  RDMA_PS_UDP 128 
 scalar_t__ RDMA_UDP_QKEY ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct ib_sa_mcmember_rec*) ; 

__attribute__((used)) static int FUNC3(struct rdma_id_private *id_priv, u32 qkey)
{
	struct ib_sa_mcmember_rec rec;
	int ret = 0;

	if (id_priv->qkey) {
		if (qkey && id_priv->qkey != qkey)
			return -EINVAL;
		return 0;
	}

	if (qkey) {
		id_priv->qkey = qkey;
		return 0;
	}

	switch (id_priv->id.ps) {
	case RDMA_PS_UDP:
	case RDMA_PS_IB:
		id_priv->qkey = RDMA_UDP_QKEY;
		break;
	case RDMA_PS_IPOIB:
		FUNC1(&id_priv->id.route.addr.dev_addr, &rec.mgid);
		ret = FUNC2(id_priv->id.device,
					     id_priv->id.port_num, &rec.mgid,
					     &rec);
		if (!ret)
			id_priv->qkey = FUNC0(rec.qkey);
		break;
	default:
		break;
	}
	return ret;
}