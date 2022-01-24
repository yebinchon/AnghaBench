#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u32 ;
struct rdma_ah_attr {int dummy; } ;
struct TYPE_6__ {int /*<<< orphan*/  interface_id; int /*<<< orphan*/  subnet_prefix; } ;
struct TYPE_7__ {TYPE_2__ global; } ;
struct ib_global_route {int hop_limit; TYPE_3__ dgid; scalar_t__ sgid_index; } ;
struct TYPE_5__ {int /*<<< orphan*/  gid_prefix; } ;
struct hfi1_ibport {TYPE_1__ rvp; } ;
struct TYPE_8__ {int /*<<< orphan*/  port; } ;

/* Variables and functions */
 int /*<<< orphan*/  IB_AH_GRH ; 
 int /*<<< orphan*/  IB_MULTICAST_LID_BASE ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_4__* FUNC2 (struct hfi1_ibport*) ; 
 struct ib_global_route* FUNC3 (struct rdma_ah_attr*) ; 
 int /*<<< orphan*/  FUNC4 (struct rdma_ah_attr*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct rdma_ah_attr*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (struct rdma_ah_attr*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(struct hfi1_ibport *ibp,
				   struct rdma_ah_attr *attr, u32 dlid)
{
	FUNC5(attr, dlid);
	FUNC6(attr, FUNC2(ibp)->port);
	if (dlid >= FUNC1(IB_MULTICAST_LID_BASE)) {
		struct ib_global_route *grh = FUNC3(attr);

		FUNC4(attr, IB_AH_GRH);
		grh->sgid_index = 0;
		grh->hop_limit = 1;
		grh->dgid.global.subnet_prefix =
			ibp->rvp.gid_prefix;
		grh->dgid.global.interface_id = FUNC0(dlid);
	}
}