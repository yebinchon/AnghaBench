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
struct mlx5_ib_dev {int /*<<< orphan*/  mdev; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int MLX5_UARS_IN_PAGE ; 
 int /*<<< orphan*/  uar_4k ; 

__attribute__((used)) static inline int FUNC1(struct mlx5_ib_dev *dev, bool lib_support)
{
	return lib_support && FUNC0(dev->mdev, uar_4k) ?
				MLX5_UARS_IN_PAGE : 1;
}