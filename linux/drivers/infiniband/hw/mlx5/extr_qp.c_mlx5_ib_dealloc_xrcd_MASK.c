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
typedef  int /*<<< orphan*/  u32 ;
struct mlx5_ib_dev {int /*<<< orphan*/  mdev; } ;
struct ib_xrcd {int /*<<< orphan*/  device; } ;
struct ib_udata {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  xrcdn; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ib_xrcd*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct mlx5_ib_dev*,char*,int /*<<< orphan*/ ) ; 
 struct mlx5_ib_dev* FUNC3 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC4 (struct ib_xrcd*) ; 

int FUNC5(struct ib_xrcd *xrcd, struct ib_udata *udata)
{
	struct mlx5_ib_dev *dev = FUNC3(xrcd->device);
	u32 xrcdn = FUNC4(xrcd)->xrcdn;
	int err;

	err = FUNC1(dev->mdev, xrcdn, 0);
	if (err)
		FUNC2(dev, "failed to dealloc xrcdn 0x%x\n", xrcdn);

	FUNC0(xrcd);
	return 0;
}