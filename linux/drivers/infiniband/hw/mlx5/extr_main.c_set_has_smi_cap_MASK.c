#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_3__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct mlx5_ib_dev {TYPE_1__* mdev; } ;
struct mlx5_hca_vport_context {int has_smi; } ;
struct TYPE_5__ {int has_smi; } ;
struct TYPE_4__ {TYPE_3__* port_caps; } ;

/* Variables and functions */
 int FUNC0 (TYPE_3__*) ; 
 scalar_t__ FUNC1 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 scalar_t__ MLX5_CAP_PORT_TYPE_IB ; 
 int /*<<< orphan*/  ib_virt ; 
 int /*<<< orphan*/  FUNC2 (struct mlx5_ib_dev*,char*,int,int) ; 
 int FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,struct mlx5_hca_vport_context*) ; 
 int /*<<< orphan*/  port_type ; 

__attribute__((used)) static int FUNC4(struct mlx5_ib_dev *dev)
{
	struct mlx5_hca_vport_context vport_ctx;
	int err;
	int port;

	for (port = 1; port <= FUNC0(dev->mdev->port_caps); port++) {
		dev->mdev->port_caps[port - 1].has_smi = false;
		if (FUNC1(dev->mdev, port_type) ==
		    MLX5_CAP_PORT_TYPE_IB) {
			if (FUNC1(dev->mdev, ib_virt)) {
				err = FUNC3(dev->mdev, 0,
								   port, 0,
								   &vport_ctx);
				if (err) {
					FUNC2(dev, "query_hca_vport_context for port=%d failed %d\n",
						    port, err);
					return err;
				}
				dev->mdev->port_caps[port - 1].has_smi =
					vport_ctx.has_smi;
			} else {
				dev->mdev->port_caps[port - 1].has_smi = true;
			}
		}
	}
	return 0;
}