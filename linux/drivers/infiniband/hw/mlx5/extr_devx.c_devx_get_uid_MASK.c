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
struct TYPE_2__ {int /*<<< orphan*/  device; } ;
struct mlx5_ib_ucontext {int devx_uid; TYPE_1__ ibucontext; } ;
struct mlx5_ib_dev {int devx_whitelist_uid; } ;

/* Variables and functions */
 int EINVAL ; 
 int EOPNOTSUPP ; 
 scalar_t__ FUNC0 (void*) ; 
 struct mlx5_ib_dev* FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct mlx5_ib_ucontext *c, void *cmd_in)
{
	if (FUNC0(cmd_in)) {
		struct mlx5_ib_dev *dev;

		if (c->devx_uid)
			return c->devx_uid;

		dev = FUNC1(c->ibucontext.device);
		if (dev->devx_whitelist_uid)
			return dev->devx_whitelist_uid;

		return -EOPNOTSUPP;
	}

	if (!c->devx_uid)
		return -EINVAL;

	return c->devx_uid;
}