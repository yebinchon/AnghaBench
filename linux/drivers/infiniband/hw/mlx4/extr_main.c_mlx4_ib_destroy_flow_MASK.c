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
struct mlx4_ib_flow {TYPE_2__* reg_id; } ;
struct mlx4_ib_dev {int /*<<< orphan*/  dev; } ;
struct ib_flow {TYPE_1__* qp; } ;
struct TYPE_4__ {scalar_t__ mirror; scalar_t__ id; } ;
struct TYPE_3__ {int /*<<< orphan*/  device; } ;

/* Variables and functions */
 int FUNC0 (TYPE_2__*) ; 
 int FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct mlx4_ib_flow*) ; 
 struct mlx4_ib_dev* FUNC3 (int /*<<< orphan*/ ) ; 
 struct mlx4_ib_flow* FUNC4 (struct ib_flow*) ; 

__attribute__((used)) static int FUNC5(struct ib_flow *flow_id)
{
	int err, ret = 0;
	int i = 0;
	struct mlx4_ib_dev *mdev = FUNC3(flow_id->qp->device);
	struct mlx4_ib_flow *mflow = FUNC4(flow_id);

	while (i < FUNC0(mflow->reg_id) && mflow->reg_id[i].id) {
		err = FUNC1(mdev->dev, mflow->reg_id[i].id);
		if (err)
			ret = err;
		if (mflow->reg_id[i].mirror) {
			err = FUNC1(mdev->dev,
						     mflow->reg_id[i].mirror);
			if (err)
				ret = err;
		}
		i++;
	}

	FUNC2(mflow);
	return ret;
}