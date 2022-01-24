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
struct mlx4_wqn_range {int dirty; int /*<<< orphan*/  list; int /*<<< orphan*/  size; int /*<<< orphan*/  base_wqn; int /*<<< orphan*/  refcount; } ;
struct TYPE_2__ {int /*<<< orphan*/  device; } ;
struct mlx4_ib_ucontext {int /*<<< orphan*/  wqn_ranges_mutex; TYPE_1__ ibucontext; } ;
struct mlx4_ib_qp {struct mlx4_wqn_range* wqn_range; } ;
struct mlx4_ib_dev {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mlx4_wqn_range*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 struct mlx4_ib_dev* FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct mlx4_ib_ucontext *context,
				struct mlx4_ib_qp *qp, bool dirty_release)
{
	struct mlx4_ib_dev *dev = FUNC5(context->ibucontext.device);
	struct mlx4_wqn_range *range;

	FUNC3(&context->wqn_ranges_mutex);

	range = qp->wqn_range;

	range->refcount--;
	if (!range->refcount) {
		FUNC2(dev->dev, range->base_wqn,
				      range->size);
		FUNC1(&range->list);
		FUNC0(range);
	} else if (dirty_release) {
	/*
	 * A range which one of its WQNs is destroyed, won't be able to be
	 * reused for further WQN allocations.
	 * The next created WQ will allocate a new range.
	 */
		range->dirty = 1;
	}

	FUNC4(&context->wqn_ranges_mutex);
}