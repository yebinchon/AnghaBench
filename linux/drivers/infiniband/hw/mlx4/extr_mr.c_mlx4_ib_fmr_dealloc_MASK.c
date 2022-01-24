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
struct mlx4_ib_fmr {int /*<<< orphan*/  mfmr; } ;
struct mlx4_ib_dev {int /*<<< orphan*/  dev; } ;
struct ib_fmr {int /*<<< orphan*/  device; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mlx4_ib_fmr*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct mlx4_ib_dev* FUNC2 (int /*<<< orphan*/ ) ; 
 struct mlx4_ib_fmr* FUNC3 (struct ib_fmr*) ; 

int FUNC4(struct ib_fmr *ibfmr)
{
	struct mlx4_ib_fmr *ifmr = FUNC3(ibfmr);
	struct mlx4_ib_dev *dev = FUNC2(ibfmr->device);
	int err;

	err = FUNC1(dev->dev, &ifmr->mfmr);

	if (!err)
		FUNC0(ifmr);

	return err;
}