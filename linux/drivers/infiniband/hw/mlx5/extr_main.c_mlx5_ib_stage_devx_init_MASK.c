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
struct mlx5_ib_dev {int devx_whitelist_uid; } ;

/* Variables and functions */
 int FUNC0 (struct mlx5_ib_dev*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct mlx5_ib_dev*) ; 

__attribute__((used)) static int FUNC2(struct mlx5_ib_dev *dev)
{
	int uid;

	uid = FUNC0(dev, false);
	if (uid > 0) {
		dev->devx_whitelist_uid = uid;
		FUNC1(dev);
	}

	return 0;
}