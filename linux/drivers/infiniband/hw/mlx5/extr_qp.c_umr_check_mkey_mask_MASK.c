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
typedef  int u64 ;
struct mlx5_ib_dev {int /*<<< orphan*/  mdev; } ;

/* Variables and functions */
 int EPERM ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int MLX5_MKEY_MASK_A ; 
 int MLX5_MKEY_MASK_PAGE_SIZE ; 
 int /*<<< orphan*/  umr_modify_atomic_disabled ; 
 int /*<<< orphan*/  umr_modify_entity_size_disabled ; 

__attribute__((used)) static int FUNC1(struct mlx5_ib_dev *dev, u64 mask)
{
	if ((mask & MLX5_MKEY_MASK_PAGE_SIZE &&
	     FUNC0(dev->mdev, umr_modify_entity_size_disabled)) ||
	    (mask & MLX5_MKEY_MASK_A &&
	     FUNC0(dev->mdev, umr_modify_atomic_disabled)))
		return -EPERM;
	return 0;
}