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
struct ib_gid_attr {int port_num; int /*<<< orphan*/  device; } ;
struct gid_entry {int /*<<< orphan*/  gid_type; int /*<<< orphan*/  gid; } ;
struct gid_cache_context {unsigned int real_index; int /*<<< orphan*/  refcount; } ;
struct TYPE_2__ {int /*<<< orphan*/  gid_type; int /*<<< orphan*/  gid; struct gid_entry* ctx; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int MLX4_MAX_PORTS ; 
 int MLX4_MAX_PORT_GIDS ; 
 int /*<<< orphan*/  FUNC0 (struct gid_entry*) ; 
 struct gid_entry* FUNC1 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (struct gid_entry*,struct mlx4_ib_dev*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 struct mlx4_ib_dev* FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(const struct ib_gid_attr *attr, void **context)
{
	struct gid_cache_context *ctx = *context;
	struct mlx4_ib_dev *ibdev = FUNC8(attr->device);
	struct mlx4_ib_iboe *iboe = &ibdev->iboe;
	struct mlx4_port_gid_table   *port_gid_table;
	int ret = 0;
	int hw_update = 0;
	struct gid_entry *gids = NULL;

	if (!FUNC5(attr->device, attr->port_num))
		return -EINVAL;

	if (attr->port_num > MLX4_MAX_PORTS)
		return -EINVAL;

	port_gid_table = &iboe->gids[attr->port_num - 1];
	FUNC6(&iboe->lock);
	if (ctx) {
		ctx->refcount--;
		if (!ctx->refcount) {
			unsigned int real_index = ctx->real_index;

			FUNC3(&port_gid_table->gids[real_index].gid, 0,
			       sizeof(port_gid_table->gids[real_index].gid));
			FUNC0(port_gid_table->gids[real_index].ctx);
			port_gid_table->gids[real_index].ctx = NULL;
			hw_update = 1;
		}
	}
	if (!ret && hw_update) {
		int i;

		gids = FUNC1(MLX4_MAX_PORT_GIDS, sizeof(*gids),
				     GFP_ATOMIC);
		if (!gids) {
			ret = -ENOMEM;
		} else {
			for (i = 0; i < MLX4_MAX_PORT_GIDS; i++) {
				FUNC2(&gids[i].gid,
				       &port_gid_table->gids[i].gid,
				       sizeof(union ib_gid));
				gids[i].gid_type =
				    port_gid_table->gids[i].gid_type;
			}
		}
	}
	FUNC7(&iboe->lock);

	if (!ret && hw_update) {
		ret = FUNC4(gids, ibdev, attr->port_num);
		FUNC0(gids);
	}
	return ret;
}