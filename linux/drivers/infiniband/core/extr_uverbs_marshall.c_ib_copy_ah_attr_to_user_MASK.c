#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct rdma_ah_attr {scalar_t__ type; } ;
struct TYPE_4__ {int /*<<< orphan*/  traffic_class; int /*<<< orphan*/  hop_limit; int /*<<< orphan*/  sgid_index; int /*<<< orphan*/  flow_label; int /*<<< orphan*/  dgid; int /*<<< orphan*/  reserved; } ;
struct ib_uverbs_ah_attr {int is_global; scalar_t__ reserved; int /*<<< orphan*/  port_num; TYPE_2__ grh; int /*<<< orphan*/  static_rate; int /*<<< orphan*/  src_path_bits; int /*<<< orphan*/  sl; int /*<<< orphan*/  dlid; } ;
struct TYPE_3__ {int /*<<< orphan*/  raw; } ;
struct ib_global_route {int /*<<< orphan*/  traffic_class; int /*<<< orphan*/  hop_limit; int /*<<< orphan*/  sgid_index; int /*<<< orphan*/  flow_label; TYPE_1__ dgid; } ;
struct ib_device {int dummy; } ;

/* Variables and functions */
 int IB_AH_GRH ; 
 int /*<<< orphan*/  IB_LID_PERMISSIVE ; 
 scalar_t__ RDMA_AH_ATTR_TYPE_OPA ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct ib_device*,struct rdma_ah_attr*,struct rdma_ah_attr*) ; 
 int FUNC4 (struct rdma_ah_attr*) ; 
 int /*<<< orphan*/  FUNC5 (struct rdma_ah_attr*) ; 
 int /*<<< orphan*/  FUNC6 (struct rdma_ah_attr*) ; 
 int /*<<< orphan*/  FUNC7 (struct rdma_ah_attr*) ; 
 int /*<<< orphan*/  FUNC8 (struct rdma_ah_attr*) ; 
 int /*<<< orphan*/  FUNC9 (struct rdma_ah_attr*) ; 
 struct ib_global_route* FUNC10 (struct rdma_ah_attr*) ; 

void FUNC11(struct ib_device *device,
			     struct ib_uverbs_ah_attr *dst,
			     struct rdma_ah_attr *ah_attr)
{
	struct rdma_ah_attr *src = ah_attr;
	struct rdma_ah_attr conv_ah;

	FUNC2(&dst->grh.reserved, 0, sizeof(dst->grh.reserved));

	if ((ah_attr->type == RDMA_AH_ATTR_TYPE_OPA) &&
	    (FUNC5(ah_attr) > FUNC0(IB_LID_PERMISSIVE)) &&
	    (!FUNC3(device, &conv_ah, ah_attr)))
		src = &conv_ah;

	dst->dlid		   = FUNC5(src);
	dst->sl			   = FUNC8(src);
	dst->src_path_bits	   = FUNC6(src);
	dst->static_rate	   = FUNC9(src);
	dst->is_global             = FUNC4(src) &
					IB_AH_GRH ? 1 : 0;
	if (dst->is_global) {
		const struct ib_global_route *grh = FUNC10(src);

		FUNC1(dst->grh.dgid, grh->dgid.raw, sizeof(grh->dgid));
		dst->grh.flow_label        = grh->flow_label;
		dst->grh.sgid_index        = grh->sgid_index;
		dst->grh.hop_limit         = grh->hop_limit;
		dst->grh.traffic_class     = grh->traffic_class;
	}
	dst->port_num		   = FUNC7(src);
	dst->reserved 		   = 0;
}