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
struct mlx5_ib_dev {int num_ports; TYPE_1__* port; int /*<<< orphan*/  mdev; } ;
struct TYPE_4__ {int set_id_valid; int /*<<< orphan*/  set_id; int /*<<< orphan*/  offsets; int /*<<< orphan*/  names; } ;
struct TYPE_3__ {TYPE_2__ cnts; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MLX5_SHARED_RESOURCE_UID ; 
 int FUNC1 (struct mlx5_ib_dev*,TYPE_2__*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  log_max_uctx ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct mlx5_ib_dev*) ; 
 int /*<<< orphan*/  FUNC5 (struct mlx5_ib_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct mlx5_ib_dev*,char*,int,int) ; 

__attribute__((used)) static int FUNC7(struct mlx5_ib_dev *dev)
{
	int num_cnt_ports;
	int err = 0;
	int i;
	bool is_shared;

	is_shared = FUNC0(dev->mdev, log_max_uctx) != 0;
	num_cnt_ports = FUNC2(dev->mdev) ? 1 : dev->num_ports;

	for (i = 0; i < num_cnt_ports; i++) {
		err = FUNC1(dev, &dev->port[i].cnts);
		if (err)
			goto err_alloc;

		FUNC5(dev, dev->port[i].cnts.names,
				      dev->port[i].cnts.offsets);

		err = FUNC3(dev->mdev,
					       &dev->port[i].cnts.set_id,
					       is_shared ?
					       MLX5_SHARED_RESOURCE_UID : 0);
		if (err) {
			FUNC6(dev,
				     "couldn't allocate queue counter for port %d, err %d\n",
				     i + 1, err);
			goto err_alloc;
		}
		dev->port[i].cnts.set_id_valid = true;
	}
	return 0;

err_alloc:
	FUNC4(dev);
	return err;
}