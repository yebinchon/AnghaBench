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
struct TYPE_6__ {TYPE_4__* sgid_attr; } ;
struct TYPE_5__ {int /*<<< orphan*/ * dmac; } ;
struct rdma_ah_attr {scalar_t__ type; TYPE_2__ grh; TYPE_1__ roce; } ;
struct mlx5_ib_dev {int dummy; } ;
struct TYPE_7__ {int stat_rate_sl; int fl_mlid; int /*<<< orphan*/  rlid; int /*<<< orphan*/  tclass; int /*<<< orphan*/  udp_sport; int /*<<< orphan*/  rmac; int /*<<< orphan*/  hop_limit; int /*<<< orphan*/  grh_gid_fl; int /*<<< orphan*/  rgid; } ;
struct mlx5_ib_ah {TYPE_3__ av; } ;
struct ib_global_route {int flow_label; int sgid_index; int /*<<< orphan*/  traffic_class; int /*<<< orphan*/  hop_limit; int /*<<< orphan*/  dgid; } ;
typedef  enum ib_gid_type { ____Placeholder_ib_gid_type } ib_gid_type ;
struct TYPE_8__ {int gid_type; } ;

/* Variables and functions */
 int IB_AH_GRH ; 
 int IB_GID_TYPE_ROCE_UDP_ENCAP ; 
 int /*<<< orphan*/  MLX5_ECN_ENABLED ; 
 scalar_t__ RDMA_AH_ATTR_TYPE_ROCE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (struct mlx5_ib_dev*,TYPE_4__*) ; 
 int FUNC4 (struct rdma_ah_attr*) ; 
 int /*<<< orphan*/  FUNC5 (struct rdma_ah_attr*) ; 
 int FUNC6 (struct rdma_ah_attr*) ; 
 int FUNC7 (struct rdma_ah_attr*) ; 
 int FUNC8 (struct rdma_ah_attr*) ; 
 struct ib_global_route* FUNC9 (struct rdma_ah_attr*) ; 

__attribute__((used)) static void FUNC10(struct mlx5_ib_dev *dev, struct mlx5_ib_ah *ah,
			 struct rdma_ah_attr *ah_attr)
{
	enum ib_gid_type gid_type;

	if (FUNC4(ah_attr) & IB_AH_GRH) {
		const struct ib_global_route *grh = FUNC9(ah_attr);

		FUNC2(ah->av.rgid, &grh->dgid, 16);
		ah->av.grh_gid_fl = FUNC1(grh->flow_label |
						(1 << 30) |
						grh->sgid_index << 20);
		ah->av.hop_limit = grh->hop_limit;
		ah->av.tclass = grh->traffic_class;
	}

	ah->av.stat_rate_sl = (FUNC8(ah_attr) << 4);

	if (ah_attr->type == RDMA_AH_ATTR_TYPE_ROCE) {
		gid_type = ah_attr->grh.sgid_attr->gid_type;

		FUNC2(ah->av.rmac, ah_attr->roce.dmac,
		       sizeof(ah_attr->roce.dmac));
		ah->av.udp_sport =
			FUNC3(dev, ah_attr->grh.sgid_attr);
		ah->av.stat_rate_sl |= (FUNC7(ah_attr) & 0x7) << 1;
		if (gid_type == IB_GID_TYPE_ROCE_UDP_ENCAP)
#define MLX5_ECN_ENABLED BIT(1)
			ah->av.tclass |= MLX5_ECN_ENABLED;
	} else {
		ah->av.rlid = FUNC0(FUNC5(ah_attr));
		ah->av.fl_mlid = FUNC6(ah_attr) & 0x7f;
		ah->av.stat_rate_sl |= (FUNC7(ah_attr) & 0xf);
	}
}