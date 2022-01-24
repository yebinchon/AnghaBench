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
typedef  int /*<<< orphan*/  u8 ;
typedef  int u32 ;
struct mlx5_ib_dev {int dummy; } ;
struct mlx5_hca_vport_context {int cap_mask1_perm; int cap_mask1; } ;
struct mlx5_core_dev {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENODEV ; 
 int FUNC0 (struct mlx5_core_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct mlx5_hca_vport_context*) ; 
 struct mlx5_core_dev* FUNC1 (struct mlx5_ib_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct mlx5_ib_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct mlx5_ib_dev*,char*,int,int) ; 
 int FUNC4 (struct mlx5_core_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct mlx5_hca_vport_context*) ; 

__attribute__((used)) static int FUNC5(struct mlx5_ib_dev *dev, u8 port_num, u32 mask,
				u32 value)
{
	struct mlx5_hca_vport_context ctx = {};
	struct mlx5_core_dev *mdev;
	u8 mdev_port_num;
	int err;

	mdev = FUNC1(dev, port_num, &mdev_port_num);
	if (!mdev)
		return -ENODEV;

	err = FUNC4(mdev, 0, mdev_port_num, 0, &ctx);
	if (err)
		goto out;

	if (~ctx.cap_mask1_perm & mask) {
		FUNC3(dev, "trying to change bitmask 0x%X but change supported 0x%X\n",
			     mask, ctx.cap_mask1_perm);
		err = -EINVAL;
		goto out;
	}

	ctx.cap_mask1 = value;
	ctx.cap_mask1_perm = mask;
	err = FUNC0(mdev, 0, mdev_port_num,
						 0, &ctx);

out:
	FUNC2(dev, port_num);

	return err;
}