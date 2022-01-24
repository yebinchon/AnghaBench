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
struct rdma_hw_stats {scalar_t__ value; } ;
struct mlx5_ib_dev {int /*<<< orphan*/  mdev; } ;
struct mlx5_ib_counters {int num_q_counters; int num_cong_counters; int num_ext_ppcnt_counters; scalar_t__ offsets; int /*<<< orphan*/  set_id; } ;
struct mlx5_core_dev {int dummy; } ;
struct ib_device {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  cc_query_allowed ; 
 struct mlx5_ib_counters* FUNC2 (struct mlx5_ib_dev*,scalar_t__) ; 
 struct mlx5_core_dev* FUNC3 (struct mlx5_ib_dev*,scalar_t__,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC4 (struct mlx5_ib_dev*,scalar_t__) ; 
 int FUNC5 (struct mlx5_ib_dev*,struct mlx5_ib_counters const*,struct rdma_hw_stats*) ; 
 int FUNC6 (int /*<<< orphan*/ ,struct mlx5_ib_counters const*,struct rdma_hw_stats*,int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ,scalar_t__,int,scalar_t__) ; 
 int /*<<< orphan*/  rx_icrc_encapsulated_counter ; 
 struct mlx5_ib_dev* FUNC8 (struct ib_device*) ; 

__attribute__((used)) static int FUNC9(struct ib_device *ibdev,
				struct rdma_hw_stats *stats,
				u8 port_num, int index)
{
	struct mlx5_ib_dev *dev = FUNC8(ibdev);
	const struct mlx5_ib_counters *cnts = FUNC2(dev, port_num - 1);
	struct mlx5_core_dev *mdev;
	int ret, num_counters;
	u8 mdev_port_num;

	if (!stats)
		return -EINVAL;

	num_counters = cnts->num_q_counters +
		       cnts->num_cong_counters +
		       cnts->num_ext_ppcnt_counters;

	/* q_counters are per IB device, query the master mdev */
	ret = FUNC6(dev->mdev, cnts, stats, cnts->set_id);
	if (ret)
		return ret;

	if (FUNC1(dev->mdev, rx_icrc_encapsulated_counter)) {
		ret =  FUNC5(dev, cnts, stats);
		if (ret)
			return ret;
	}

	if (FUNC0(dev->mdev, cc_query_allowed)) {
		mdev = FUNC3(dev, port_num,
						    &mdev_port_num);
		if (!mdev) {
			/* If port is not affiliated yet, its in down state
			 * which doesn't have any counters yet, so it would be
			 * zero. So no need to read from the HCA.
			 */
			goto done;
		}
		ret = FUNC7(dev->mdev,
						   stats->value +
						   cnts->num_q_counters,
						   cnts->num_cong_counters,
						   cnts->offsets +
						   cnts->num_q_counters);

		FUNC4(dev, port_num);
		if (ret)
			return ret;
	}

done:
	return num_counters;
}