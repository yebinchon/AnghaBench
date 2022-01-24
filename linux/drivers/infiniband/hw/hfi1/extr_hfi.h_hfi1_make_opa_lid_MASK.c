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
typedef  scalar_t__ u32 ;
struct rdma_ah_attr {int dummy; } ;
struct ib_global_route {int /*<<< orphan*/  dgid; } ;

/* Variables and functions */
 int /*<<< orphan*/  IB_LID_PERMISSIVE ; 
 int /*<<< orphan*/  IB_MULTICAST_LID_BASE ; 
 int /*<<< orphan*/  OPA_LID_PERMISSIVE ; 
 int /*<<< orphan*/  OPA_MCAST_NR ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct rdma_ah_attr*) ; 
 struct ib_global_route* FUNC6 (struct rdma_ah_attr*) ; 
 int /*<<< orphan*/  FUNC7 (struct rdma_ah_attr*,scalar_t__) ; 

__attribute__((used)) static inline void FUNC8(struct rdma_ah_attr *attr)
{
	const struct ib_global_route *grh = FUNC6(attr);
	u32 dlid = FUNC5(attr);

	/* Modify ah_attr.dlid to be in the 32 bit LID space.
	 * This is how the address will be laid out:
	 * Assuming MCAST_NR to be 4,
	 * 32 bit permissive LID = 0xFFFFFFFF
	 * Multicast LID range = 0xFFFFFFFE to 0xF0000000
	 * Unicast LID range = 0xEFFFFFFF to 1
	 * Invalid LID = 0
	 */
	if (FUNC2(&grh->dgid))
		dlid = FUNC3(&grh->dgid);
	else if ((dlid >= FUNC0(IB_MULTICAST_LID_BASE)) &&
		 (dlid != FUNC0(IB_LID_PERMISSIVE)) &&
		 (dlid != FUNC1(OPA_LID_PERMISSIVE)))
		dlid = dlid - FUNC0(IB_MULTICAST_LID_BASE) +
			FUNC4(OPA_MCAST_NR);
	else if (dlid == FUNC0(IB_LID_PERMISSIVE))
		dlid = FUNC1(OPA_LID_PERMISSIVE);

	FUNC7(attr, dlid);
}