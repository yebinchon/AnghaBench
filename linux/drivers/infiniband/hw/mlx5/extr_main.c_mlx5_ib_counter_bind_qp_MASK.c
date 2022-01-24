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
typedef  int /*<<< orphan*/  u16 ;
struct rdma_counter {int /*<<< orphan*/  id; } ;
struct mlx5_ib_dev {int /*<<< orphan*/  mdev; } ;
struct ib_qp {int /*<<< orphan*/  device; } ;

/* Variables and functions */
 int /*<<< orphan*/  MLX5_SHARED_RESOURCE_UID ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct ib_qp*,struct rdma_counter*) ; 
 struct mlx5_ib_dev* FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct rdma_counter *counter,
				   struct ib_qp *qp)
{
	struct mlx5_ib_dev *dev = FUNC3(qp->device);
	u16 cnt_set_id = 0;
	int err;

	if (!counter->id) {
		err = FUNC0(dev->mdev,
					       &cnt_set_id,
					       MLX5_SHARED_RESOURCE_UID);
		if (err)
			return err;
		counter->id = cnt_set_id;
	}

	err = FUNC2(qp, counter);
	if (err)
		goto fail_set_counter;

	return 0;

fail_set_counter:
	FUNC1(dev->mdev, cnt_set_id);
	counter->id = 0;

	return err;
}