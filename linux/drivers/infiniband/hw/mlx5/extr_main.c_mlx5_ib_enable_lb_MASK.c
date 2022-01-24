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
struct TYPE_2__ {int user_td; int qps; int enabled; int /*<<< orphan*/  mutex; } ;
struct mlx5_ib_dev {TYPE_1__ lb; int /*<<< orphan*/  mdev; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

int FUNC3(struct mlx5_ib_dev *dev, bool td, bool qp)
{
	int err = 0;

	FUNC1(&dev->lb.mutex);
	if (td)
		dev->lb.user_td++;
	if (qp)
		dev->lb.qps++;

	if (dev->lb.user_td == 2 ||
	    dev->lb.qps == 1) {
		if (!dev->lb.enabled) {
			err = FUNC0(dev->mdev, true);
			dev->lb.enabled = true;
		}
	}

	FUNC2(&dev->lb.mutex);

	return err;
}