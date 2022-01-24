#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct rdma_ah_attr {scalar_t__ type; } ;
struct TYPE_5__ {int g_slid; int /*<<< orphan*/  dgid; int /*<<< orphan*/  hop_limit; int /*<<< orphan*/  gid_index; int /*<<< orphan*/  sl_tclass_flowlabel; scalar_t__ stat_rate; int /*<<< orphan*/  dlid; int /*<<< orphan*/  port_pd; } ;
struct TYPE_4__ {int /*<<< orphan*/  sl_tclass_flowlabel; } ;
struct TYPE_6__ {TYPE_2__ ib; TYPE_1__ eth; } ;
struct mlx4_ib_ah {TYPE_3__ av; } ;
struct ib_ah {scalar_t__ type; } ;

/* Variables and functions */
 scalar_t__ MLX4_STAT_RATE_OFFSET ; 
 scalar_t__ RDMA_AH_ATTR_TYPE_ROCE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct rdma_ah_attr*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC3 (struct mlx4_ib_ah*) ; 
 int /*<<< orphan*/  FUNC4 (struct rdma_ah_attr*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct rdma_ah_attr*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct rdma_ah_attr*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (struct rdma_ah_attr*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct rdma_ah_attr*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct rdma_ah_attr*,int) ; 
 int /*<<< orphan*/  FUNC10 (struct rdma_ah_attr*,scalar_t__) ; 
 struct mlx4_ib_ah* FUNC11 (struct ib_ah*) ; 

int FUNC12(struct ib_ah *ibah, struct rdma_ah_attr *ah_attr)
{
	struct mlx4_ib_ah *ah = FUNC11(ibah);
	int port_num = FUNC1(ah->av.ib.port_pd) >> 24;

	FUNC2(ah_attr, 0, sizeof *ah_attr);
	ah_attr->type = ibah->type;

	if (ah_attr->type == RDMA_AH_ATTR_TYPE_ROCE) {
		FUNC5(ah_attr, 0);
		FUNC9(ah_attr,
			       FUNC1(ah->av.eth.sl_tclass_flowlabel)
			       >> 29);
	} else {
		FUNC5(ah_attr, FUNC0(ah->av.ib.dlid));
		FUNC9(ah_attr,
			       FUNC1(ah->av.ib.sl_tclass_flowlabel)
			       >> 28);
	}

	FUNC8(ah_attr, port_num);
	if (ah->av.ib.stat_rate)
		FUNC10(ah_attr,
					ah->av.ib.stat_rate -
					MLX4_STAT_RATE_OFFSET);
	FUNC7(ah_attr, ah->av.ib.g_slid & 0x7F);
	if (FUNC3(ah)) {
		u32 tc_fl = FUNC1(ah->av.ib.sl_tclass_flowlabel);

		FUNC6(ah_attr, NULL,
				tc_fl & 0xfffff, ah->av.ib.gid_index,
				ah->av.ib.hop_limit,
				tc_fl >> 20);
		FUNC4(ah_attr, ah->av.ib.dgid);
	}

	return 0;
}