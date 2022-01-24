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
typedef  int /*<<< orphan*/  u8 ;
struct rxe_dev {int /*<<< orphan*/ * stats_counters; } ;
struct rdma_hw_stats {int /*<<< orphan*/ * value; } ;
struct ib_device {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  rxe_counter_name ; 
 struct rxe_dev* FUNC2 (struct ib_device*) ; 

int FUNC3(struct ib_device *ibdev,
			struct rdma_hw_stats *stats,
			u8 port, int index)
{
	struct rxe_dev *dev = FUNC2(ibdev);
	unsigned int cnt;

	if (!port || !stats)
		return -EINVAL;

	for (cnt = 0; cnt  < FUNC0(rxe_counter_name); cnt++)
		stats->value[cnt] = FUNC1(&dev->stats_counters[cnt]);

	return FUNC0(rxe_counter_name);
}