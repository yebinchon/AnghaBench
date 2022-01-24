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
struct mlx5_eswitch {int dummy; } ;
struct TYPE_2__ {struct mlx5_eswitch* eswitch; } ;
struct mlx5_core_dev {TYPE_1__ priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  REP_IB ; 
 int /*<<< orphan*/  FUNC0 (struct mlx5_eswitch*,int /*<<< orphan*/ ) ; 

void FUNC1(struct mlx5_core_dev *mdev)
{
	struct mlx5_eswitch *esw = mdev->priv.eswitch;

	FUNC0(esw, REP_IB);
}