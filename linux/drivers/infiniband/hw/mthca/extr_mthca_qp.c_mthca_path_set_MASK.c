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
typedef  int /*<<< orphan*/  u8 ;
struct rdma_ah_attr {int dummy; } ;
struct mthca_qp_path {int g_mylmc; scalar_t__ mgid_index; void* sl_tclass_flowlabel; int /*<<< orphan*/  rgid; int /*<<< orphan*/  hop_limit; int /*<<< orphan*/  static_rate; int /*<<< orphan*/  rlid; } ;
struct TYPE_3__ {scalar_t__ gid_table_len; } ;
struct mthca_dev {TYPE_1__ limits; } ;
struct TYPE_4__ {int /*<<< orphan*/  raw; } ;
struct ib_global_route {scalar_t__ sgid_index; int traffic_class; int flow_label; TYPE_2__ dgid; int /*<<< orphan*/  hop_limit; } ;

/* Variables and functions */
 int IB_AH_GRH ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 void* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct mthca_dev*,char*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct mthca_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct rdma_ah_attr const*) ; 
 int /*<<< orphan*/  FUNC6 (struct rdma_ah_attr const*) ; 
 int FUNC7 (struct rdma_ah_attr const*) ; 
 int FUNC8 (struct rdma_ah_attr const*) ; 
 int /*<<< orphan*/  FUNC9 (struct rdma_ah_attr const*) ; 
 struct ib_global_route* FUNC10 (struct rdma_ah_attr const*) ; 

__attribute__((used)) static int FUNC11(struct mthca_dev *dev, const struct rdma_ah_attr *ah,
			  struct mthca_qp_path *path, u8 port)
{
	path->g_mylmc     = FUNC7(ah) & 0x7f;
	path->rlid        = FUNC0(FUNC6(ah));
	path->static_rate = FUNC4(dev, FUNC9(ah),
					   port);

	if (FUNC5(ah) & IB_AH_GRH) {
		const struct ib_global_route *grh = FUNC10(ah);

		if (grh->sgid_index >= dev->limits.gid_table_len) {
			FUNC3(dev, "sgid_index (%u) too large. max is %d\n",
				  grh->sgid_index,
				  dev->limits.gid_table_len - 1);
			return -1;
		}

		path->g_mylmc   |= 1 << 7;
		path->mgid_index = grh->sgid_index;
		path->hop_limit  = grh->hop_limit;
		path->sl_tclass_flowlabel =
			FUNC1((FUNC8(ah) << 28) |
				    (grh->traffic_class << 20) |
				    (grh->flow_label));
		FUNC2(path->rgid, grh->dgid.raw, 16);
	} else {
		path->sl_tclass_flowlabel = FUNC1(FUNC8(ah) <<
							28);
	}

	return 0;
}