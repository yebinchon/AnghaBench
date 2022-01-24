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
struct ib_xrcd {int dummy; } ;
struct mlx5_ib_xrcd {struct ib_xrcd ibxrcd; int /*<<< orphan*/  xrcdn; } ;
struct mlx5_ib_dev {int /*<<< orphan*/  mdev; } ;
struct ib_udata {int dummy; } ;
struct ib_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  ENOSYS ; 
 struct ib_xrcd* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct mlx5_ib_xrcd*) ; 
 struct mlx5_ib_xrcd* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct mlx5_ib_dev* FUNC5 (struct ib_device*) ; 
 int /*<<< orphan*/  xrc ; 

struct ib_xrcd *FUNC6(struct ib_device *ibdev,
				   struct ib_udata *udata)
{
	struct mlx5_ib_dev *dev = FUNC5(ibdev);
	struct mlx5_ib_xrcd *xrcd;
	int err;

	if (!FUNC1(dev->mdev, xrc))
		return FUNC0(-ENOSYS);

	xrcd = FUNC3(sizeof(*xrcd), GFP_KERNEL);
	if (!xrcd)
		return FUNC0(-ENOMEM);

	err = FUNC4(dev->mdev, &xrcd->xrcdn, 0);
	if (err) {
		FUNC2(xrcd);
		return FUNC0(-ENOMEM);
	}

	return &xrcd->ibxrcd;
}