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
struct mlx5_ib_dev {int dummy; } ;
struct mlx5_bfreg_info {int /*<<< orphan*/  lock; int /*<<< orphan*/ * count; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

void FUNC2(struct mlx5_ib_dev *dev, struct mlx5_bfreg_info *bfregi, int bfregn)
{
	FUNC0(&bfregi->lock);
	bfregi->count[bfregn]--;
	FUNC1(&bfregi->lock);
}