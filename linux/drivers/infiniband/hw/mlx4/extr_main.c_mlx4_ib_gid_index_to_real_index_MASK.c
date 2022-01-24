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
typedef  int u8 ;
struct mlx4_port_gid_table {TYPE_1__* gids; } ;
struct mlx4_ib_iboe {int /*<<< orphan*/  lock; struct mlx4_port_gid_table* gids; } ;
struct mlx4_ib_dev {int /*<<< orphan*/  ib_dev; int /*<<< orphan*/  dev; struct mlx4_ib_iboe iboe; } ;
struct ib_gid_attr {int port_num; int index; scalar_t__ gid_type; int /*<<< orphan*/  gid; } ;
struct gid_cache_context {int real_index; } ;
struct TYPE_2__ {scalar_t__ gid_type; struct gid_cache_context* ctx; int /*<<< orphan*/  gid; } ;

/* Variables and functions */
 int EINVAL ; 
 int MLX4_MAX_PORTS ; 
 int MLX4_MAX_PORT_GIDS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

int FUNC5(struct mlx4_ib_dev *ibdev,
				    const struct ib_gid_attr *attr)
{
	struct mlx4_ib_iboe *iboe = &ibdev->iboe;
	struct gid_cache_context *ctx = NULL;
	struct mlx4_port_gid_table   *port_gid_table;
	int real_index = -EINVAL;
	int i;
	unsigned long flags;
	u8 port_num = attr->port_num;

	if (port_num > MLX4_MAX_PORTS)
		return -EINVAL;

	if (FUNC1(ibdev->dev))
		port_num = 1;

	if (!FUNC2(&ibdev->ib_dev, port_num))
		return attr->index;

	FUNC3(&iboe->lock, flags);
	port_gid_table = &iboe->gids[port_num - 1];

	for (i = 0; i < MLX4_MAX_PORT_GIDS; ++i)
		if (!FUNC0(&port_gid_table->gids[i].gid,
			    &attr->gid, sizeof(attr->gid)) &&
		    attr->gid_type == port_gid_table->gids[i].gid_type) {
			ctx = port_gid_table->gids[i].ctx;
			break;
		}
	if (ctx)
		real_index = ctx->real_index;
	FUNC4(&iboe->lock, flags);
	return real_index;
}