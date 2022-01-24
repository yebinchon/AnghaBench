#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
union ib_flow_spec {int type; int /*<<< orphan*/  size; } ;
typedef  int /*<<< orphan*/  u64 ;
typedef  int u16 ;
struct mlx4_net_trans_rule_hw_ctrl {int /*<<< orphan*/  qpn; int /*<<< orphan*/  port; scalar_t__ type; int /*<<< orphan*/  prio; } ;
struct mlx4_ib_dev {int /*<<< orphan*/  dev; } ;
struct mlx4_cmd_mailbox {int /*<<< orphan*/  dma; struct mlx4_net_trans_rule_hw_ctrl* buf; } ;
struct ib_qp {int /*<<< orphan*/  qp_num; int /*<<< orphan*/  device; } ;
struct ib_flow_attr {int const priority; int num_of_specs; int /*<<< orphan*/  port; } ;
struct _rule_hw {int dummy; } ;
typedef  enum mlx4_net_trans_promisc_mode { ____Placeholder_mlx4_net_trans_promisc_mode } mlx4_net_trans_promisc_mode ;
typedef  enum ib_flow_spec_type { ____Placeholder_ib_flow_spec_type } ib_flow_spec_type ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int ENXIO ; 
#define  IB_FLOW_DOMAIN_ETHTOOL 135 
#define  IB_FLOW_DOMAIN_NIC 134 
 int IB_FLOW_DOMAIN_NUM ; 
#define  IB_FLOW_DOMAIN_RFS 133 
#define  IB_FLOW_DOMAIN_USER 132 
 int IB_FLOW_SPEC_ETH ; 
 scalar_t__ FUNC0 (struct mlx4_cmd_mailbox*) ; 
 int /*<<< orphan*/  MLX4_CMD_NATIVE ; 
 int /*<<< orphan*/  MLX4_CMD_TIME_CLASS_A ; 
#define  MLX4_DOMAIN_ETHTOOL 131 
#define  MLX4_DOMAIN_NIC 130 
#define  MLX4_DOMAIN_RFS 129 
#define  MLX4_DOMAIN_UVERBS 128 
 int MLX4_FS_REGULAR ; 
 int const MLX4_IB_FLOW_MAX_PRIO ; 
 int /*<<< orphan*/  MLX4_QP_FLOW_STEERING_ATTACH ; 
 int FUNC1 (struct mlx4_cmd_mailbox*) ; 
 int FUNC2 (struct mlx4_ib_dev*,struct ib_qp*,scalar_t__,struct mlx4_net_trans_rule_hw_ctrl*) ; 
 int FUNC3 (struct ib_qp*,struct ib_flow_attr*) ; 
 int /*<<< orphan*/  FUNC4 (int const) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ default_table ; 
 struct mlx4_cmd_mailbox* FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,struct mlx4_cmd_mailbox*) ; 
 int /*<<< orphan*/  FUNC9 (struct mlx4_net_trans_rule_hw_ctrl*,struct _rule_hw*) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ,int) ; 
 int FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*,struct mlx4_net_trans_rule_hw_ctrl*) ; 
 int /*<<< orphan*/  FUNC13 (char*,...) ; 
 struct mlx4_ib_dev* FUNC14 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC15(struct ib_qp *qp, struct ib_flow_attr *flow_attr,
			  int domain,
			  enum mlx4_net_trans_promisc_mode flow_type,
			  u64 *reg_id)
{
	int ret, i;
	int size = 0;
	void *ib_flow;
	struct mlx4_ib_dev *mdev = FUNC14(qp->device);
	struct mlx4_cmd_mailbox *mailbox;
	struct mlx4_net_trans_rule_hw_ctrl *ctrl;
	int default_flow;

	static const u16 __mlx4_domain[] = {
		[IB_FLOW_DOMAIN_USER] = MLX4_DOMAIN_UVERBS,
		[IB_FLOW_DOMAIN_ETHTOOL] = MLX4_DOMAIN_ETHTOOL,
		[IB_FLOW_DOMAIN_RFS] = MLX4_DOMAIN_RFS,
		[IB_FLOW_DOMAIN_NIC] = MLX4_DOMAIN_NIC,
	};

	if (flow_attr->priority > MLX4_IB_FLOW_MAX_PRIO) {
		FUNC13("Invalid priority value %d\n", flow_attr->priority);
		return -EINVAL;
	}

	if (domain >= IB_FLOW_DOMAIN_NUM) {
		FUNC13("Invalid domain value %d\n", domain);
		return -EINVAL;
	}

	if (FUNC11(mdev->dev, flow_type) < 0)
		return -EINVAL;

	mailbox = FUNC6(mdev->dev);
	if (FUNC0(mailbox))
		return FUNC1(mailbox);
	ctrl = mailbox->buf;

	ctrl->prio = FUNC4(__mlx4_domain[domain] |
				 flow_attr->priority);
	ctrl->type = FUNC11(mdev->dev, flow_type);
	ctrl->port = flow_attr->port;
	ctrl->qpn = FUNC5(qp->qp_num);

	ib_flow = flow_attr + 1;
	size += sizeof(struct mlx4_net_trans_rule_hw_ctrl);
	/* Add default flows */
	default_flow = FUNC3(qp, flow_attr);
	if (default_flow >= 0) {
		ret = FUNC2(
				mdev, qp, default_table + default_flow,
				mailbox->buf + size);
		if (ret < 0) {
			FUNC8(mdev->dev, mailbox);
			return -EINVAL;
		}
		size += ret;
	}
	for (i = 0; i < flow_attr->num_of_specs; i++) {
		ret = FUNC12(mdev->dev, qp->qp_num, ib_flow,
				      mailbox->buf + size);
		if (ret < 0) {
			FUNC8(mdev->dev, mailbox);
			return -EINVAL;
		}
		ib_flow += ((union ib_flow_spec *) ib_flow)->size;
		size += ret;
	}

	if (FUNC10(mdev->dev) && flow_type == MLX4_FS_REGULAR &&
	    flow_attr->num_of_specs == 1) {
		struct _rule_hw *rule_header = (struct _rule_hw *)(ctrl + 1);
		enum ib_flow_spec_type header_spec =
			((union ib_flow_spec *)(flow_attr + 1))->type;

		if (header_spec == IB_FLOW_SPEC_ETH)
			FUNC9(ctrl, rule_header);
	}

	ret = FUNC7(mdev->dev, mailbox->dma, reg_id, size >> 2, 0,
			   MLX4_QP_FLOW_STEERING_ATTACH, MLX4_CMD_TIME_CLASS_A,
			   MLX4_CMD_NATIVE);
	if (ret == -ENOMEM)
		FUNC13("mcg table is full. Fail to register network rule.\n");
	else if (ret == -ENXIO)
		FUNC13("Device managed flow steering is disabled. Fail to register network rule.\n");
	else if (ret)
		FUNC13("Invalid argument. Fail to register network rule.\n");

	FUNC8(mdev->dev, mailbox);
	return ret;
}