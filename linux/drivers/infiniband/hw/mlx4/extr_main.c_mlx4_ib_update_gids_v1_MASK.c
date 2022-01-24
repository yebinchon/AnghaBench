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
typedef  union ib_gid {int dummy; } ib_gid ;
typedef  int u8 ;
struct mlx4_ib_dev {struct mlx4_dev* dev; } ;
struct mlx4_dev {int dummy; } ;
struct mlx4_cmd_mailbox {int /*<<< orphan*/  dma; union ib_gid* buf; } ;
struct gid_entry {int /*<<< orphan*/  gid; } ;

/* Variables and functions */
 int ENOMEM ; 
 scalar_t__ FUNC0 (struct mlx4_cmd_mailbox*) ; 
 int /*<<< orphan*/  MLX4_CMD_SET_PORT ; 
 int /*<<< orphan*/  MLX4_CMD_TIME_CLASS_B ; 
 int /*<<< orphan*/  MLX4_CMD_WRAPPED ; 
 int MLX4_MAX_PORT_GIDS ; 
 int MLX4_SET_PORT_GID_TABLE ; 
 int /*<<< orphan*/  FUNC1 (union ib_gid*,int /*<<< orphan*/ *,int) ; 
 struct mlx4_cmd_mailbox* FUNC2 (struct mlx4_dev*) ; 
 int FUNC3 (struct mlx4_dev*,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct mlx4_dev*,struct mlx4_cmd_mailbox*) ; 
 scalar_t__ FUNC5 (struct mlx4_dev*) ; 

__attribute__((used)) static int FUNC6(struct gid_entry *gids,
				  struct mlx4_ib_dev *ibdev,
				  u8 port_num)
{
	struct mlx4_cmd_mailbox *mailbox;
	int err;
	struct mlx4_dev *dev = ibdev->dev;
	int i;
	union ib_gid *gid_tbl;

	mailbox = FUNC2(dev);
	if (FUNC0(mailbox))
		return -ENOMEM;

	gid_tbl = mailbox->buf;

	for (i = 0; i < MLX4_MAX_PORT_GIDS; ++i)
		FUNC1(&gid_tbl[i], &gids[i].gid, sizeof(union ib_gid));

	err = FUNC3(dev, mailbox->dma,
		       MLX4_SET_PORT_GID_TABLE << 8 | port_num,
		       1, MLX4_CMD_SET_PORT, MLX4_CMD_TIME_CLASS_B,
		       MLX4_CMD_WRAPPED);
	if (FUNC5(dev))
		err += FUNC3(dev, mailbox->dma,
				MLX4_SET_PORT_GID_TABLE << 8 | 2,
				1, MLX4_CMD_SET_PORT, MLX4_CMD_TIME_CLASS_B,
				MLX4_CMD_WRAPPED);

	FUNC4(dev, mailbox);
	return err;
}