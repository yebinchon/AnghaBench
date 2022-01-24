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
struct TYPE_3__ {int /*<<< orphan*/  netdev_lock; int /*<<< orphan*/ * netdev; } ;
struct mlx5_ib_port {int /*<<< orphan*/ * rep; TYPE_1__ roce; } ;
struct mlx5_ib_dev {int /*<<< orphan*/  profile; struct mlx5_ib_port* port; } ;
struct mlx5_eswitch_rep {size_t vport_index; scalar_t__ vport; TYPE_2__* rep_data; } ;
struct TYPE_4__ {int /*<<< orphan*/ * priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  MLX5_IB_STAGE_MAX ; 
 scalar_t__ MLX5_VPORT_UPLINK ; 
 size_t REP_IB ; 
 int /*<<< orphan*/  FUNC0 (struct mlx5_ib_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct mlx5_ib_dev* FUNC1 (struct mlx5_eswitch_rep*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC4(struct mlx5_eswitch_rep *rep)
{
	struct mlx5_ib_dev *dev = FUNC1(rep);
	struct mlx5_ib_port *port;

	port = &dev->port[rep->vport_index];
	FUNC2(&port->roce.netdev_lock);
	port->roce.netdev = NULL;
	FUNC3(&port->roce.netdev_lock);
	rep->rep_data[REP_IB].priv = NULL;
	port->rep = NULL;

	if (rep->vport == MLX5_VPORT_UPLINK)
		FUNC0(dev, dev->profile, MLX5_IB_STAGE_MAX);
}