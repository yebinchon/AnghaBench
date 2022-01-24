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
struct mlx5_ib_dev {scalar_t__ devx_whitelist_uid; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mlx5_ib_dev*) ; 
 int /*<<< orphan*/  FUNC1 (struct mlx5_ib_dev*,scalar_t__) ; 

__attribute__((used)) static void FUNC2(struct mlx5_ib_dev *dev)
{
	if (dev->devx_whitelist_uid) {
		FUNC0(dev);
		FUNC1(dev, dev->devx_whitelist_uid);
	}
}