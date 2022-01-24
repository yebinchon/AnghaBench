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
typedef  scalar_t__ u8 ;
struct rdma_hw_stats {int dummy; } ;
struct mlx5_ib_dev {int /*<<< orphan*/  mdev; } ;
struct mlx5_ib_counters {scalar_t__ num_ext_ppcnt_counters; scalar_t__ num_cong_counters; scalar_t__ num_q_counters; int /*<<< orphan*/  names; } ;
struct ib_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  RDMA_HW_STATS_DEFAULT_LIFESPAN ; 
 struct mlx5_ib_counters* FUNC0 (struct mlx5_ib_dev*,scalar_t__) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 struct rdma_hw_stats* FUNC2 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 struct mlx5_ib_dev* FUNC3 (struct ib_device*) ; 

__attribute__((used)) static struct rdma_hw_stats *FUNC4(struct ib_device *ibdev,
						    u8 port_num)
{
	struct mlx5_ib_dev *dev = FUNC3(ibdev);
	const struct mlx5_ib_counters *cnts;
	bool is_switchdev = FUNC1(dev->mdev);

	if ((is_switchdev && port_num) || (!is_switchdev && !port_num))
		return NULL;

	cnts = FUNC0(dev, port_num - 1);

	return FUNC2(cnts->names,
					  cnts->num_q_counters +
					  cnts->num_cong_counters +
					  cnts->num_ext_ppcnt_counters,
					  RDMA_HW_STATS_DEFAULT_LIFESPAN);
}