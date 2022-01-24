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
typedef  scalar_t__ u8 ;
struct TYPE_2__ {unsigned long long uverbs_ex_cmd_mask; } ;
struct mlx5_ib_dev {int /*<<< orphan*/  mdev; TYPE_1__ ib_dev; } ;

/* Variables and functions */
 unsigned long long IB_USER_VERBS_EX_CMD_CREATE_RWQ_IND_TBL ; 
 unsigned long long IB_USER_VERBS_EX_CMD_CREATE_WQ ; 
 unsigned long long IB_USER_VERBS_EX_CMD_DESTROY_RWQ_IND_TBL ; 
 unsigned long long IB_USER_VERBS_EX_CMD_DESTROY_WQ ; 
 unsigned long long IB_USER_VERBS_EX_CMD_MODIFY_WQ ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int FUNC1 (struct mlx5_ib_dev*,scalar_t__) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mlx5_ib_dev_common_roce_ops ; 

__attribute__((used)) static int FUNC3(struct mlx5_ib_dev *dev)
{
	u8 port_num;

	dev->ib_dev.uverbs_ex_cmd_mask |=
			(1ull << IB_USER_VERBS_EX_CMD_CREATE_WQ) |
			(1ull << IB_USER_VERBS_EX_CMD_MODIFY_WQ) |
			(1ull << IB_USER_VERBS_EX_CMD_DESTROY_WQ) |
			(1ull << IB_USER_VERBS_EX_CMD_CREATE_RWQ_IND_TBL) |
			(1ull << IB_USER_VERBS_EX_CMD_DESTROY_RWQ_IND_TBL);
	FUNC0(&dev->ib_dev, &mlx5_ib_dev_common_roce_ops);

	port_num = FUNC2(dev->mdev) - 1;

	/* Register only for native ports */
	return FUNC1(dev, port_num);
}