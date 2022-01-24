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
struct rdma_ah_attr {int dummy; } ;
struct ib_device {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int IB_AH_GRH ; 
 int /*<<< orphan*/  IB_LID_PERMISSIVE ; 
 int /*<<< orphan*/  IB_MULTICAST_LID_BASE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct rdma_ah_attr*) ; 
 scalar_t__ FUNC2 (struct rdma_ah_attr*) ; 
 int FUNC3 (struct rdma_ah_attr*) ; 

int FUNC4(struct ib_device *ibdev, struct rdma_ah_attr *ah_attr)
{
	if (FUNC3(ah_attr) > 15)
		return -EINVAL;

	if (FUNC2(ah_attr) == 0)
		return -EINVAL;
	if (FUNC2(ah_attr) >=
		FUNC0(IB_MULTICAST_LID_BASE) &&
	    FUNC2(ah_attr) !=
		FUNC0(IB_LID_PERMISSIVE) &&
	    !(FUNC1(ah_attr) & IB_AH_GRH))
		return -EINVAL;

	return 0;
}