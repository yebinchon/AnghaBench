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
struct mlx5_ib_pd {int /*<<< orphan*/  uid; int /*<<< orphan*/  pdn; } ;
struct mlx5_ib_dev {int /*<<< orphan*/  mdev; } ;
struct ib_udata {int dummy; } ;
struct ib_pd {int /*<<< orphan*/  device; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct mlx5_ib_dev* FUNC1 (int /*<<< orphan*/ ) ; 
 struct mlx5_ib_pd* FUNC2 (struct ib_pd*) ; 

__attribute__((used)) static void FUNC3(struct ib_pd *pd, struct ib_udata *udata)
{
	struct mlx5_ib_dev *mdev = FUNC1(pd->device);
	struct mlx5_ib_pd *mpd = FUNC2(pd);

	FUNC0(mdev->mdev, mpd->pdn, mpd->uid);
}