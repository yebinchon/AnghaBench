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
struct TYPE_2__ {scalar_t__ pd; scalar_t__ cq; scalar_t__ qp; } ;
struct mlx5_ib_dev {TYPE_1__ umrc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct mlx5_ib_dev*,char*) ; 
 int FUNC4 (struct mlx5_ib_dev*) ; 

__attribute__((used)) static void FUNC5(struct mlx5_ib_dev *dev)
{
	int err;

	err = FUNC4(dev);
	if (err)
		FUNC3(dev, "mr cache cleanup failed\n");

	if (dev->umrc.qp)
		FUNC2(dev->umrc.qp, NULL);
	if (dev->umrc.cq)
		FUNC1(dev->umrc.cq);
	if (dev->umrc.pd)
		FUNC0(dev->umrc.pd);
}