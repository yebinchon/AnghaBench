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
struct rdma_hw_stats {int dummy; } ;
struct rdma_counter {scalar_t__ port; int /*<<< orphan*/  device; } ;
struct mlx5_ib_dev {int dummy; } ;
struct mlx5_ib_counters {int /*<<< orphan*/  num_q_counters; int /*<<< orphan*/  names; } ;

/* Variables and functions */
 int /*<<< orphan*/  RDMA_HW_STATS_DEFAULT_LIFESPAN ; 
 struct mlx5_ib_counters* FUNC0 (struct mlx5_ib_dev*,scalar_t__) ; 
 struct rdma_hw_stats* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct mlx5_ib_dev* FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct rdma_hw_stats *
FUNC3(struct rdma_counter *counter)
{
	struct mlx5_ib_dev *dev = FUNC2(counter->device);
	const struct mlx5_ib_counters *cnts =
		FUNC0(dev, counter->port - 1);

	/* Q counters are in the beginning of all counters */
	return FUNC1(cnts->names,
					  cnts->num_q_counters,
					  RDMA_HW_STATS_DEFAULT_LIFESPAN);
}