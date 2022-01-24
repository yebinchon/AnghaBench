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
typedef  union ib_gid {int dummy; } ib_gid ;
struct mlx4_port_gid_table {TYPE_1__* gids; } ;
struct mlx4_ib_iboe {int /*<<< orphan*/  lock; struct mlx4_port_gid_table* gids; } ;
struct mlx4_ib_dev {struct mlx4_ib_iboe iboe; } ;
struct ib_gid_attr {int port_num; scalar_t__ gid_type; int /*<<< orphan*/  gid; int /*<<< orphan*/  device; } ;
struct gid_entry {scalar_t__ gid_type; int /*<<< orphan*/  gid; } ;
struct gid_cache_context {int real_index; int refcount; } ;
struct TYPE_2__ {scalar_t__ gid_type; int /*<<< orphan*/  gid; struct gid_cache_context* ctx; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int ENOSPC ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int MLX4_MAX_PORTS ; 
 int MLX4_MAX_PORT_GIDS ; 
 int /*<<< orphan*/  FUNC0 (struct gid_entry*) ; 
 struct gid_cache_context* FUNC1 (int,int /*<<< orphan*/ ) ; 
 struct gid_entry* FUNC2 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int FUNC5 (struct gid_entry*,struct mlx4_ib_dev*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 struct mlx4_ib_dev* FUNC10 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC11(const struct ib_gid_attr *attr, void **context)
{
	struct mlx4_ib_dev *ibdev = FUNC10(attr->device);
	struct mlx4_ib_iboe *iboe = &ibdev->iboe;
	struct mlx4_port_gid_table   *port_gid_table;
	int free = -1, found = -1;
	int ret = 0;
	int hw_update = 0;
	int i;
	struct gid_entry *gids = NULL;

	if (!FUNC6(attr->device, attr->port_num))
		return -EINVAL;

	if (attr->port_num > MLX4_MAX_PORTS)
		return -EINVAL;

	if (!context)
		return -EINVAL;

	port_gid_table = &iboe->gids[attr->port_num - 1];
	FUNC8(&iboe->lock);
	for (i = 0; i < MLX4_MAX_PORT_GIDS; ++i) {
		if (!FUNC3(&port_gid_table->gids[i].gid,
			    &attr->gid, sizeof(attr->gid)) &&
		    port_gid_table->gids[i].gid_type == attr->gid_type)  {
			found = i;
			break;
		}
		if (free < 0 && FUNC7(&port_gid_table->gids[i].gid))
			free = i; /* HW has space */
	}

	if (found < 0) {
		if (free < 0) {
			ret = -ENOSPC;
		} else {
			port_gid_table->gids[free].ctx = FUNC1(sizeof(*port_gid_table->gids[free].ctx), GFP_ATOMIC);
			if (!port_gid_table->gids[free].ctx) {
				ret = -ENOMEM;
			} else {
				*context = port_gid_table->gids[free].ctx;
				FUNC4(&port_gid_table->gids[free].gid,
				       &attr->gid, sizeof(attr->gid));
				port_gid_table->gids[free].gid_type = attr->gid_type;
				port_gid_table->gids[free].ctx->real_index = free;
				port_gid_table->gids[free].ctx->refcount = 1;
				hw_update = 1;
			}
		}
	} else {
		struct gid_cache_context *ctx = port_gid_table->gids[found].ctx;
		*context = ctx;
		ctx->refcount++;
	}
	if (!ret && hw_update) {
		gids = FUNC2(MLX4_MAX_PORT_GIDS, sizeof(*gids),
				     GFP_ATOMIC);
		if (!gids) {
			ret = -ENOMEM;
		} else {
			for (i = 0; i < MLX4_MAX_PORT_GIDS; i++) {
				FUNC4(&gids[i].gid, &port_gid_table->gids[i].gid, sizeof(union ib_gid));
				gids[i].gid_type = port_gid_table->gids[i].gid_type;
			}
		}
	}
	FUNC9(&iboe->lock);

	if (!ret && hw_update) {
		ret = FUNC5(gids, ibdev, attr->port_num);
		FUNC0(gids);
	}

	return ret;
}