#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int num_ddr_avs; int /*<<< orphan*/  alloc; int /*<<< orphan*/  pool; int /*<<< orphan*/ * av_map; scalar_t__ ddr_av_base; } ;
struct mthca_dev {int mthca_flags; TYPE_1__ av_table; scalar_t__ ddr_start; TYPE_2__* pdev; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int MTHCA_AV_SIZE ; 
 int MTHCA_FLAG_DDR_HIDDEN ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct mthca_dev*) ; 
 scalar_t__ FUNC6 (TYPE_2__*,int) ; 

int FUNC7(struct mthca_dev *dev)
{
	int err;

	if (FUNC5(dev))
		return 0;

	err = FUNC4(&dev->av_table.alloc,
			       dev->av_table.num_ddr_avs,
			       dev->av_table.num_ddr_avs - 1,
			       0);
	if (err)
		return err;

	dev->av_table.pool = FUNC0("mthca_av", &dev->pdev->dev,
					     MTHCA_AV_SIZE,
					     MTHCA_AV_SIZE, 0);
	if (!dev->av_table.pool)
		goto out_free_alloc;

	if (!(dev->mthca_flags & MTHCA_FLAG_DDR_HIDDEN)) {
		dev->av_table.av_map = FUNC2(FUNC6(dev->pdev, 4) +
					       dev->av_table.ddr_av_base -
					       dev->ddr_start,
					       dev->av_table.num_ddr_avs *
					       MTHCA_AV_SIZE);
		if (!dev->av_table.av_map)
			goto out_free_pool;
	} else
		dev->av_table.av_map = NULL;

	return 0;

 out_free_pool:
	FUNC1(dev->av_table.pool);

 out_free_alloc:
	FUNC3(&dev->av_table.alloc);
	return -ENOMEM;
}