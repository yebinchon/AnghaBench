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
struct TYPE_4__ {unsigned long long uverbs_cmd_mask; unsigned long long uverbs_ex_cmd_mask; int use_cq_dim; int /*<<< orphan*/  driver_def; } ;
struct TYPE_3__ {int /*<<< orphan*/  mutex; } ;
struct mlx5_ib_dev {TYPE_2__ ib_dev; TYPE_1__ lb; struct mlx5_core_dev* mdev; int /*<<< orphan*/  umr_fence; } ;
struct mlx5_core_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CONFIG_INFINIBAND_USER_ACCESS ; 
 int /*<<< orphan*/  CONFIG_MLX5_CORE_IPOIB ; 
 unsigned long long IB_USER_VERBS_CMD_ALLOC_MW ; 
 unsigned long long IB_USER_VERBS_CMD_ALLOC_PD ; 
 unsigned long long IB_USER_VERBS_CMD_ATTACH_MCAST ; 
 unsigned long long IB_USER_VERBS_CMD_CLOSE_XRCD ; 
 unsigned long long IB_USER_VERBS_CMD_CREATE_AH ; 
 unsigned long long IB_USER_VERBS_CMD_CREATE_COMP_CHANNEL ; 
 unsigned long long IB_USER_VERBS_CMD_CREATE_CQ ; 
 unsigned long long IB_USER_VERBS_CMD_CREATE_QP ; 
 unsigned long long IB_USER_VERBS_CMD_CREATE_SRQ ; 
 unsigned long long IB_USER_VERBS_CMD_CREATE_XSRQ ; 
 unsigned long long IB_USER_VERBS_CMD_DEALLOC_MW ; 
 unsigned long long IB_USER_VERBS_CMD_DEALLOC_PD ; 
 unsigned long long IB_USER_VERBS_CMD_DEREG_MR ; 
 unsigned long long IB_USER_VERBS_CMD_DESTROY_AH ; 
 unsigned long long IB_USER_VERBS_CMD_DESTROY_CQ ; 
 unsigned long long IB_USER_VERBS_CMD_DESTROY_QP ; 
 unsigned long long IB_USER_VERBS_CMD_DESTROY_SRQ ; 
 unsigned long long IB_USER_VERBS_CMD_DETACH_MCAST ; 
 unsigned long long IB_USER_VERBS_CMD_GET_CONTEXT ; 
 unsigned long long IB_USER_VERBS_CMD_MODIFY_QP ; 
 unsigned long long IB_USER_VERBS_CMD_MODIFY_SRQ ; 
 unsigned long long IB_USER_VERBS_CMD_OPEN_QP ; 
 unsigned long long IB_USER_VERBS_CMD_OPEN_XRCD ; 
 unsigned long long IB_USER_VERBS_CMD_QUERY_DEVICE ; 
 unsigned long long IB_USER_VERBS_CMD_QUERY_PORT ; 
 unsigned long long IB_USER_VERBS_CMD_QUERY_QP ; 
 unsigned long long IB_USER_VERBS_CMD_QUERY_SRQ ; 
 unsigned long long IB_USER_VERBS_CMD_REG_MR ; 
 unsigned long long IB_USER_VERBS_CMD_REREG_MR ; 
 unsigned long long IB_USER_VERBS_CMD_RESIZE_CQ ; 
 unsigned long long IB_USER_VERBS_EX_CMD_CREATE_CQ ; 
 unsigned long long IB_USER_VERBS_EX_CMD_CREATE_FLOW ; 
 unsigned long long IB_USER_VERBS_EX_CMD_CREATE_QP ; 
 unsigned long long IB_USER_VERBS_EX_CMD_DESTROY_FLOW ; 
 unsigned long long IB_USER_VERBS_EX_CMD_MODIFY_CQ ; 
 unsigned long long IB_USER_VERBS_EX_CMD_MODIFY_QP ; 
 unsigned long long IB_USER_VERBS_EX_CMD_QUERY_DEVICE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int MLX5_ACCEL_IPSEC_CAP_DEVICE ; 
 scalar_t__ FUNC1 (struct mlx5_core_dev*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct mlx5_core_dev*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct mlx5_core_dev*,int /*<<< orphan*/ ) ; 
 scalar_t__ MLX5_CAP_PORT_TYPE_ETH ; 
 int MLX5_GENERAL_OBJ_TYPES_CAP_SW_ICM ; 
 int /*<<< orphan*/  disable_local_lb_mc ; 
 int /*<<< orphan*/  disable_local_lb_uc ; 
 int /*<<< orphan*/  general_obj_types ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  imaicl ; 
 int FUNC5 (struct mlx5_ib_dev*) ; 
 int /*<<< orphan*/  ipoib_enhanced_offloads ; 
 int /*<<< orphan*/  memic ; 
 int FUNC6 (struct mlx5_core_dev*) ; 
 scalar_t__ FUNC7 (struct mlx5_core_dev*) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__) ; 
 int /*<<< orphan*/  mlx5_ib_defs ; 
 int /*<<< orphan*/  mlx5_ib_dev_dm_ops ; 
 int /*<<< orphan*/  mlx5_ib_dev_flow_ipsec_ops ; 
 int /*<<< orphan*/  mlx5_ib_dev_ipoib_enhanced_ops ; 
 int /*<<< orphan*/  mlx5_ib_dev_mw_ops ; 
 int /*<<< orphan*/  mlx5_ib_dev_ops ; 
 int /*<<< orphan*/  mlx5_ib_dev_sriov_ops ; 
 int /*<<< orphan*/  mlx5_ib_dev_xrc_ops ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  port_type ; 
 int /*<<< orphan*/  umr_fence ; 
 int /*<<< orphan*/  xrc ; 

__attribute__((used)) static int FUNC10(struct mlx5_ib_dev *dev)
{
	struct mlx5_core_dev *mdev = dev->mdev;
	int err;

	dev->ib_dev.uverbs_cmd_mask	=
		(1ull << IB_USER_VERBS_CMD_GET_CONTEXT)		|
		(1ull << IB_USER_VERBS_CMD_QUERY_DEVICE)	|
		(1ull << IB_USER_VERBS_CMD_QUERY_PORT)		|
		(1ull << IB_USER_VERBS_CMD_ALLOC_PD)		|
		(1ull << IB_USER_VERBS_CMD_DEALLOC_PD)		|
		(1ull << IB_USER_VERBS_CMD_CREATE_AH)		|
		(1ull << IB_USER_VERBS_CMD_DESTROY_AH)		|
		(1ull << IB_USER_VERBS_CMD_REG_MR)		|
		(1ull << IB_USER_VERBS_CMD_REREG_MR)		|
		(1ull << IB_USER_VERBS_CMD_DEREG_MR)		|
		(1ull << IB_USER_VERBS_CMD_CREATE_COMP_CHANNEL)	|
		(1ull << IB_USER_VERBS_CMD_CREATE_CQ)		|
		(1ull << IB_USER_VERBS_CMD_RESIZE_CQ)		|
		(1ull << IB_USER_VERBS_CMD_DESTROY_CQ)		|
		(1ull << IB_USER_VERBS_CMD_CREATE_QP)		|
		(1ull << IB_USER_VERBS_CMD_MODIFY_QP)		|
		(1ull << IB_USER_VERBS_CMD_QUERY_QP)		|
		(1ull << IB_USER_VERBS_CMD_DESTROY_QP)		|
		(1ull << IB_USER_VERBS_CMD_ATTACH_MCAST)	|
		(1ull << IB_USER_VERBS_CMD_DETACH_MCAST)	|
		(1ull << IB_USER_VERBS_CMD_CREATE_SRQ)		|
		(1ull << IB_USER_VERBS_CMD_MODIFY_SRQ)		|
		(1ull << IB_USER_VERBS_CMD_QUERY_SRQ)		|
		(1ull << IB_USER_VERBS_CMD_DESTROY_SRQ)		|
		(1ull << IB_USER_VERBS_CMD_CREATE_XSRQ)		|
		(1ull << IB_USER_VERBS_CMD_OPEN_QP);
	dev->ib_dev.uverbs_ex_cmd_mask =
		(1ull << IB_USER_VERBS_EX_CMD_QUERY_DEVICE)	|
		(1ull << IB_USER_VERBS_EX_CMD_CREATE_CQ)	|
		(1ull << IB_USER_VERBS_EX_CMD_CREATE_QP)	|
		(1ull << IB_USER_VERBS_EX_CMD_MODIFY_QP)	|
		(1ull << IB_USER_VERBS_EX_CMD_MODIFY_CQ)	|
		(1ull << IB_USER_VERBS_EX_CMD_CREATE_FLOW)	|
		(1ull << IB_USER_VERBS_EX_CMD_DESTROY_FLOW);

	if (FUNC2(mdev, ipoib_enhanced_offloads) &&
	    FUNC0(CONFIG_MLX5_CORE_IPOIB))
		FUNC4(&dev->ib_dev,
				  &mlx5_ib_dev_ipoib_enhanced_ops);

	if (FUNC7(mdev))
		FUNC4(&dev->ib_dev, &mlx5_ib_dev_sriov_ops);

	dev->umr_fence = FUNC8(FUNC2(mdev, umr_fence));

	if (FUNC2(mdev, imaicl)) {
		dev->ib_dev.uverbs_cmd_mask |=
			(1ull << IB_USER_VERBS_CMD_ALLOC_MW)	|
			(1ull << IB_USER_VERBS_CMD_DEALLOC_MW);
		FUNC4(&dev->ib_dev, &mlx5_ib_dev_mw_ops);
	}

	if (FUNC2(mdev, xrc)) {
		dev->ib_dev.uverbs_cmd_mask |=
			(1ull << IB_USER_VERBS_CMD_OPEN_XRCD) |
			(1ull << IB_USER_VERBS_CMD_CLOSE_XRCD);
		FUNC4(&dev->ib_dev, &mlx5_ib_dev_xrc_ops);
	}

	if (FUNC1(mdev, memic) ||
	    FUNC3(dev->mdev, general_obj_types) &
	    MLX5_GENERAL_OBJ_TYPES_CAP_SW_ICM)
		FUNC4(&dev->ib_dev, &mlx5_ib_dev_dm_ops);

	if (FUNC6(dev->mdev) &
	    MLX5_ACCEL_IPSEC_CAP_DEVICE)
		FUNC4(&dev->ib_dev, &mlx5_ib_dev_flow_ipsec_ops);
	FUNC4(&dev->ib_dev, &mlx5_ib_dev_ops);

	if (FUNC0(CONFIG_INFINIBAND_USER_ACCESS))
		dev->ib_dev.driver_def = mlx5_ib_defs;

	err = FUNC5(dev);
	if (err)
		return err;

	if ((FUNC2(dev->mdev, port_type) == MLX5_CAP_PORT_TYPE_ETH) &&
	    (FUNC2(dev->mdev, disable_local_lb_uc) ||
	     FUNC2(dev->mdev, disable_local_lb_mc)))
		FUNC9(&dev->lb.mutex);

	dev->ib_dev.use_cq_dim = true;

	return 0;
}