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
struct ib_device {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ NR_COUNTERS ; 
 int /*<<< orphan*/  RDMA_HW_STATS_DEFAULT_LIFESPAN ; 
 int /*<<< orphan*/  names ; 
 struct rdma_hw_stats* FUNC2 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct rdma_hw_stats *FUNC3(struct ib_device *ibdev,
					      u8 port_num)
{
	FUNC1(FUNC0(names) != NR_COUNTERS);

	if (port_num != 0)
		return NULL;

	return FUNC2(names, NR_COUNTERS,
					  RDMA_HW_STATS_DEFAULT_LIFESPAN);
}