#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int u16 ;
struct TYPE_6__ {int /*<<< orphan*/  qpn; } ;
struct TYPE_7__ {TYPE_1__ mqp; } ;
struct mlx5_ib_sq {TYPE_2__ base; } ;
struct mlx5_ib_dev {TYPE_5__* port; int /*<<< orphan*/  is_rep; TYPE_4__* mdev; } ;
struct mlx5_flow_handle {int dummy; } ;
struct mlx5_eswitch_rep {int /*<<< orphan*/  vport; } ;
struct mlx5_eswitch {int dummy; } ;
struct TYPE_10__ {struct mlx5_eswitch_rep* rep; } ;
struct TYPE_8__ {struct mlx5_eswitch* eswitch; } ;
struct TYPE_9__ {TYPE_3__ priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 struct mlx5_flow_handle* FUNC0 (int /*<<< orphan*/ ) ; 
 struct mlx5_flow_handle* FUNC1 (struct mlx5_eswitch*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

struct mlx5_flow_handle *FUNC2(struct mlx5_ib_dev *dev,
						   struct mlx5_ib_sq *sq,
						   u16 port)
{
	struct mlx5_eswitch *esw = dev->mdev->priv.eswitch;
	struct mlx5_eswitch_rep *rep;

	if (!dev->is_rep || !port)
		return NULL;

	if (!dev->port[port - 1].rep)
		return FUNC0(-EINVAL);

	rep = dev->port[port - 1].rep;

	return FUNC1(esw, rep->vport,
						   sq->base.mqp.qpn);
}