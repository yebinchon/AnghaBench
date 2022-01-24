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
typedef  scalar_t__ u32 ;
struct rdma_ah_attr {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  dgid; } ;

/* Variables and functions */
 int HFI1_PKT_TYPE_16B ; 
 int HFI1_PKT_TYPE_9B ; 
 int /*<<< orphan*/  OPA_LID_PERMISSIVE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (struct rdma_ah_attr*) ; 
 TYPE_1__* FUNC4 (struct rdma_ah_attr*) ; 

__attribute__((used)) static inline bool FUNC5(u32 lid, struct rdma_ah_attr *attr)
{
	/*
	 * If there was an incoming 16B packet with permissive
	 * LIDs, OPA GIDs would have been programmed when those
	 * packets were received. A 16B packet will have to
	 * be sent in response to that packet. Return a 16B
	 * header type if that's the case.
	 */
	if (FUNC3(attr) == FUNC0(OPA_LID_PERMISSIVE))
		return (FUNC2(&FUNC4(attr)->dgid)) ?
			HFI1_PKT_TYPE_16B : HFI1_PKT_TYPE_9B;

	/*
	 * Return a 16B header type if either the the destination
	 * or source lid is extended.
	 */
	if (FUNC1(FUNC3(attr)) == HFI1_PKT_TYPE_16B)
		return HFI1_PKT_TYPE_16B;

	return FUNC1(lid);
}