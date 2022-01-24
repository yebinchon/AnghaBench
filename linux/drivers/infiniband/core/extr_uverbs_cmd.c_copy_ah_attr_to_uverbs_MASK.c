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
struct rdma_ah_attr {int dummy; } ;
struct ib_uverbs_qp_dest {int is_global; int /*<<< orphan*/  port_num; int /*<<< orphan*/  traffic_class; int /*<<< orphan*/  hop_limit; int /*<<< orphan*/  sgid_index; int /*<<< orphan*/  flow_label; int /*<<< orphan*/  dgid; int /*<<< orphan*/  static_rate; int /*<<< orphan*/  src_path_bits; int /*<<< orphan*/  sl; int /*<<< orphan*/  dlid; } ;
struct TYPE_2__ {int /*<<< orphan*/  raw; } ;
struct ib_global_route {int /*<<< orphan*/  traffic_class; int /*<<< orphan*/  hop_limit; int /*<<< orphan*/  sgid_index; int /*<<< orphan*/  flow_label; TYPE_1__ dgid; } ;

/* Variables and functions */
 int IB_AH_GRH ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (struct rdma_ah_attr*) ; 
 int /*<<< orphan*/  FUNC2 (struct rdma_ah_attr*) ; 
 int /*<<< orphan*/  FUNC3 (struct rdma_ah_attr*) ; 
 int /*<<< orphan*/  FUNC4 (struct rdma_ah_attr*) ; 
 int /*<<< orphan*/  FUNC5 (struct rdma_ah_attr*) ; 
 int /*<<< orphan*/  FUNC6 (struct rdma_ah_attr*) ; 
 struct ib_global_route* FUNC7 (struct rdma_ah_attr*) ; 

__attribute__((used)) static void FUNC8(struct ib_uverbs_qp_dest *uverb_attr,
				   struct rdma_ah_attr *rdma_attr)
{
	const struct ib_global_route   *grh;

	uverb_attr->dlid              = FUNC2(rdma_attr);
	uverb_attr->sl                = FUNC5(rdma_attr);
	uverb_attr->src_path_bits     = FUNC3(rdma_attr);
	uverb_attr->static_rate       = FUNC6(rdma_attr);
	uverb_attr->is_global         = !!(FUNC1(rdma_attr) &
					 IB_AH_GRH);
	if (uverb_attr->is_global) {
		grh = FUNC7(rdma_attr);
		FUNC0(uverb_attr->dgid, grh->dgid.raw, 16);
		uverb_attr->flow_label        = grh->flow_label;
		uverb_attr->sgid_index        = grh->sgid_index;
		uverb_attr->hop_limit         = grh->hop_limit;
		uverb_attr->traffic_class     = grh->traffic_class;
	}
	uverb_attr->port_num          = FUNC4(rdma_attr);
}