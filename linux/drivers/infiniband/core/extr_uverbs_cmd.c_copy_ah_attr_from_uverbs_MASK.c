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
struct rdma_ah_attr {int /*<<< orphan*/  type; } ;
struct ib_uverbs_qp_dest {int /*<<< orphan*/  port_num; int /*<<< orphan*/  static_rate; int /*<<< orphan*/  src_path_bits; int /*<<< orphan*/  sl; int /*<<< orphan*/  dlid; int /*<<< orphan*/  dgid; int /*<<< orphan*/  traffic_class; int /*<<< orphan*/  hop_limit; int /*<<< orphan*/  sgid_index; int /*<<< orphan*/  flow_label; scalar_t__ is_global; } ;
struct ib_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ib_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct rdma_ah_attr*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct rdma_ah_attr*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct rdma_ah_attr*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct rdma_ah_attr*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct rdma_ah_attr*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct rdma_ah_attr*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct rdma_ah_attr*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct rdma_ah_attr*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct rdma_ah_attr*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC10(struct ib_device *dev,
				     struct rdma_ah_attr *rdma_attr,
				     struct ib_uverbs_qp_dest *uverb_attr)
{
	rdma_attr->type = FUNC0(dev, uverb_attr->port_num);
	if (uverb_attr->is_global) {
		FUNC4(rdma_attr, NULL,
				uverb_attr->flow_label,
				uverb_attr->sgid_index,
				uverb_attr->hop_limit,
				uverb_attr->traffic_class);
		FUNC2(rdma_attr, uverb_attr->dgid);
	} else {
		FUNC1(rdma_attr, 0);
	}
	FUNC3(rdma_attr, uverb_attr->dlid);
	FUNC8(rdma_attr, uverb_attr->sl);
	FUNC6(rdma_attr, uverb_attr->src_path_bits);
	FUNC9(rdma_attr, uverb_attr->static_rate);
	FUNC7(rdma_attr, uverb_attr->port_num);
	FUNC5(rdma_attr, false);
}