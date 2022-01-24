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
struct TYPE_5__ {struct device* parent; } ;
struct ib_device {unsigned int phys_port_cnt; unsigned long long uverbs_cmd_mask; unsigned long long uverbs_ex_cmd_mask; int /*<<< orphan*/  num_comp_vectors; int /*<<< orphan*/  local_dma_lkey; TYPE_1__ dev; int /*<<< orphan*/  node_type; } ;
struct TYPE_8__ {int /*<<< orphan*/  notifier_call; } ;
struct hns_roce_ib_iboe {TYPE_4__ nb; int /*<<< orphan*/ * netdevs; int /*<<< orphan*/  lock; } ;
struct TYPE_7__ {unsigned int num_ports; int flags; int /*<<< orphan*/  num_comp_vectors; int /*<<< orphan*/  reserved_lkey; } ;
struct hns_roce_dev {int active; struct hns_roce_ib_iboe iboe; TYPE_3__ caps; TYPE_2__* hw; struct ib_device ib_dev; struct device* dev; } ;
struct device {int dummy; } ;
struct TYPE_6__ {int /*<<< orphan*/ * hns_roce_dev_ops; int /*<<< orphan*/ * hns_roce_dev_srq_ops; } ;

/* Variables and functions */
 int HNS_ROCE_CAP_FLAG_FRMR ; 
 int HNS_ROCE_CAP_FLAG_MW ; 
 int HNS_ROCE_CAP_FLAG_REREG_MR ; 
 int HNS_ROCE_CAP_FLAG_SRQ ; 
 unsigned long long IB_USER_VERBS_CMD_ALLOC_MW ; 
 unsigned long long IB_USER_VERBS_CMD_ALLOC_PD ; 
 unsigned long long IB_USER_VERBS_CMD_CREATE_COMP_CHANNEL ; 
 unsigned long long IB_USER_VERBS_CMD_CREATE_CQ ; 
 unsigned long long IB_USER_VERBS_CMD_CREATE_QP ; 
 unsigned long long IB_USER_VERBS_CMD_CREATE_SRQ ; 
 unsigned long long IB_USER_VERBS_CMD_DEALLOC_MW ; 
 unsigned long long IB_USER_VERBS_CMD_DEALLOC_PD ; 
 unsigned long long IB_USER_VERBS_CMD_DEREG_MR ; 
 unsigned long long IB_USER_VERBS_CMD_DESTROY_CQ ; 
 unsigned long long IB_USER_VERBS_CMD_DESTROY_QP ; 
 unsigned long long IB_USER_VERBS_CMD_DESTROY_SRQ ; 
 unsigned long long IB_USER_VERBS_CMD_GET_CONTEXT ; 
 unsigned long long IB_USER_VERBS_CMD_MODIFY_QP ; 
 unsigned long long IB_USER_VERBS_CMD_MODIFY_SRQ ; 
 unsigned long long IB_USER_VERBS_CMD_POST_SRQ_RECV ; 
 unsigned long long IB_USER_VERBS_CMD_QUERY_DEVICE ; 
 unsigned long long IB_USER_VERBS_CMD_QUERY_PORT ; 
 unsigned long long IB_USER_VERBS_CMD_QUERY_QP ; 
 unsigned long long IB_USER_VERBS_CMD_QUERY_SRQ ; 
 unsigned long long IB_USER_VERBS_CMD_REG_MR ; 
 unsigned long long IB_USER_VERBS_CMD_REREG_MR ; 
 unsigned long long IB_USER_VERBS_EX_CMD_MODIFY_CQ ; 
 int /*<<< orphan*/  RDMA_NODE_IB_CA ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*) ; 
 int /*<<< orphan*/  hns_roce_dev_frmr_ops ; 
 int /*<<< orphan*/  hns_roce_dev_mr_ops ; 
 int /*<<< orphan*/  hns_roce_dev_mw_ops ; 
 int /*<<< orphan*/  hns_roce_dev_ops ; 
 int /*<<< orphan*/  hns_roce_dev_srq_ops ; 
 int /*<<< orphan*/  hns_roce_netdev_event ; 
 int FUNC1 (struct hns_roce_dev*) ; 
 int FUNC2 (struct ib_device*,int /*<<< orphan*/ ,unsigned int) ; 
 int FUNC3 (struct ib_device*,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct ib_device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct ib_device*) ; 
 int FUNC6 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(struct hns_roce_dev *hr_dev)
{
	int ret;
	struct hns_roce_ib_iboe *iboe = NULL;
	struct ib_device *ib_dev = NULL;
	struct device *dev = hr_dev->dev;
	unsigned int i;

	iboe = &hr_dev->iboe;
	FUNC7(&iboe->lock);

	ib_dev = &hr_dev->ib_dev;

	ib_dev->node_type		= RDMA_NODE_IB_CA;
	ib_dev->dev.parent		= dev;

	ib_dev->phys_port_cnt		= hr_dev->caps.num_ports;
	ib_dev->local_dma_lkey		= hr_dev->caps.reserved_lkey;
	ib_dev->num_comp_vectors	= hr_dev->caps.num_comp_vectors;
	ib_dev->uverbs_cmd_mask		=
		(1ULL << IB_USER_VERBS_CMD_GET_CONTEXT) |
		(1ULL << IB_USER_VERBS_CMD_QUERY_DEVICE) |
		(1ULL << IB_USER_VERBS_CMD_QUERY_PORT) |
		(1ULL << IB_USER_VERBS_CMD_ALLOC_PD) |
		(1ULL << IB_USER_VERBS_CMD_DEALLOC_PD) |
		(1ULL << IB_USER_VERBS_CMD_REG_MR) |
		(1ULL << IB_USER_VERBS_CMD_DEREG_MR) |
		(1ULL << IB_USER_VERBS_CMD_CREATE_COMP_CHANNEL) |
		(1ULL << IB_USER_VERBS_CMD_CREATE_CQ) |
		(1ULL << IB_USER_VERBS_CMD_DESTROY_CQ) |
		(1ULL << IB_USER_VERBS_CMD_CREATE_QP) |
		(1ULL << IB_USER_VERBS_CMD_MODIFY_QP) |
		(1ULL << IB_USER_VERBS_CMD_QUERY_QP) |
		(1ULL << IB_USER_VERBS_CMD_DESTROY_QP);

	ib_dev->uverbs_ex_cmd_mask |=
		(1ULL << IB_USER_VERBS_EX_CMD_MODIFY_CQ);

	if (hr_dev->caps.flags & HNS_ROCE_CAP_FLAG_REREG_MR) {
		ib_dev->uverbs_cmd_mask |= (1ULL << IB_USER_VERBS_CMD_REREG_MR);
		FUNC4(ib_dev, &hns_roce_dev_mr_ops);
	}

	/* MW */
	if (hr_dev->caps.flags & HNS_ROCE_CAP_FLAG_MW) {
		ib_dev->uverbs_cmd_mask |=
					(1ULL << IB_USER_VERBS_CMD_ALLOC_MW) |
					(1ULL << IB_USER_VERBS_CMD_DEALLOC_MW);
		FUNC4(ib_dev, &hns_roce_dev_mw_ops);
	}

	/* FRMR */
	if (hr_dev->caps.flags & HNS_ROCE_CAP_FLAG_FRMR)
		FUNC4(ib_dev, &hns_roce_dev_frmr_ops);

	/* SRQ */
	if (hr_dev->caps.flags & HNS_ROCE_CAP_FLAG_SRQ) {
		ib_dev->uverbs_cmd_mask |=
				(1ULL << IB_USER_VERBS_CMD_CREATE_SRQ) |
				(1ULL << IB_USER_VERBS_CMD_MODIFY_SRQ) |
				(1ULL << IB_USER_VERBS_CMD_QUERY_SRQ) |
				(1ULL << IB_USER_VERBS_CMD_DESTROY_SRQ) |
				(1ULL << IB_USER_VERBS_CMD_POST_SRQ_RECV);
		FUNC4(ib_dev, &hns_roce_dev_srq_ops);
		FUNC4(ib_dev, hr_dev->hw->hns_roce_dev_srq_ops);
	}

	FUNC4(ib_dev, hr_dev->hw->hns_roce_dev_ops);
	FUNC4(ib_dev, &hns_roce_dev_ops);
	for (i = 0; i < hr_dev->caps.num_ports; i++) {
		if (!hr_dev->iboe.netdevs[i])
			continue;

		ret = FUNC2(ib_dev, hr_dev->iboe.netdevs[i],
					   i + 1);
		if (ret)
			return ret;
	}
	ret = FUNC3(ib_dev, "hns_%d");
	if (ret) {
		FUNC0(dev, "ib_register_device failed!\n");
		return ret;
	}

	ret = FUNC1(hr_dev);
	if (ret) {
		FUNC0(dev, "setup_mtu_mac failed!\n");
		goto error_failed_setup_mtu_mac;
	}

	iboe->nb.notifier_call = hns_roce_netdev_event;
	ret = FUNC6(&iboe->nb);
	if (ret) {
		FUNC0(dev, "register_netdevice_notifier failed!\n");
		goto error_failed_setup_mtu_mac;
	}

	hr_dev->active = true;
	return 0;

error_failed_setup_mtu_mac:
	FUNC5(ib_dev);

	return ret;
}