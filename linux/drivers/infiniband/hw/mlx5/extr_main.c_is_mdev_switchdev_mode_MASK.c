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
struct TYPE_2__ {int /*<<< orphan*/  eswitch; } ;
struct mlx5_core_dev {TYPE_1__ priv; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct mlx5_core_dev const*) ; 
 scalar_t__ MLX5_ESWITCH_OFFLOADS ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC2(const struct mlx5_core_dev *mdev)
{
	return FUNC0(mdev) &&
	       FUNC1(mdev->priv.eswitch) ==
		       MLX5_ESWITCH_OFFLOADS;
}