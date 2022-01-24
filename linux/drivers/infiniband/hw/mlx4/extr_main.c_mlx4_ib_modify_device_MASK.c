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
struct mlx4_cmd_mailbox {int /*<<< orphan*/  dma; int /*<<< orphan*/  buf; } ;
struct ib_device_modify {int /*<<< orphan*/  node_desc; } ;
struct ib_device {int /*<<< orphan*/  node_desc; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; int /*<<< orphan*/  sm_lock; } ;

/* Variables and functions */
 int EOPNOTSUPP ; 
 int IB_DEVICE_MODIFY_NODE_DESC ; 
 int /*<<< orphan*/  IB_DEVICE_NODE_DESC_MAX ; 
 scalar_t__ FUNC0 (struct mlx4_cmd_mailbox*) ; 
 int /*<<< orphan*/  MLX4_CMD_NATIVE ; 
 int /*<<< orphan*/  MLX4_CMD_SET_NODE ; 
 int /*<<< orphan*/  MLX4_CMD_TIME_CLASS_A ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct mlx4_cmd_mailbox* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct mlx4_cmd_mailbox*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 TYPE_1__* FUNC8 (struct ib_device*) ; 

__attribute__((used)) static int FUNC9(struct ib_device *ibdev, int mask,
				 struct ib_device_modify *props)
{
	struct mlx4_cmd_mailbox *mailbox;
	unsigned long flags;

	if (mask & ~IB_DEVICE_MODIFY_NODE_DESC)
		return -EOPNOTSUPP;

	if (!(mask & IB_DEVICE_MODIFY_NODE_DESC))
		return 0;

	if (FUNC5(FUNC8(ibdev)->dev))
		return -EOPNOTSUPP;

	FUNC6(&FUNC8(ibdev)->sm_lock, flags);
	FUNC1(ibdev->node_desc, props->node_desc, IB_DEVICE_NODE_DESC_MAX);
	FUNC7(&FUNC8(ibdev)->sm_lock, flags);

	/*
	 * If possible, pass node desc to FW, so it can generate
	 * a 144 trap.  If cmd fails, just ignore.
	 */
	mailbox = FUNC2(FUNC8(ibdev)->dev);
	if (FUNC0(mailbox))
		return 0;

	FUNC1(mailbox->buf, props->node_desc, IB_DEVICE_NODE_DESC_MAX);
	FUNC3(FUNC8(ibdev)->dev, mailbox->dma, 1, 0,
		 MLX4_CMD_SET_NODE, MLX4_CMD_TIME_CLASS_A, MLX4_CMD_NATIVE);

	FUNC4(FUNC8(ibdev)->dev, mailbox);

	return 0;
}