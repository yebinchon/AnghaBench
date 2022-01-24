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
typedef  int u32 ;
struct rdma_ah_attr {int /*<<< orphan*/  type; } ;
struct TYPE_2__ {int stat_rate_sl; int /*<<< orphan*/  rlid; int /*<<< orphan*/  rgid; int /*<<< orphan*/  tclass; int /*<<< orphan*/  hop_limit; int /*<<< orphan*/  grh_gid_fl; } ;
struct mlx5_ib_ah {TYPE_1__ av; } ;
struct ib_ah {int /*<<< orphan*/  type; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct rdma_ah_attr*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct rdma_ah_attr*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct rdma_ah_attr*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct rdma_ah_attr*,int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct rdma_ah_attr*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct rdma_ah_attr*,int) ; 
 struct mlx5_ib_ah* FUNC8 (struct ib_ah*) ; 

int FUNC9(struct ib_ah *ibah, struct rdma_ah_attr *ah_attr)
{
	struct mlx5_ib_ah *ah = FUNC8(ibah);
	u32 tmp;

	FUNC2(ah_attr, 0, sizeof(*ah_attr));
	ah_attr->type = ibah->type;

	tmp = FUNC1(ah->av.grh_gid_fl);
	if (tmp & (1 << 30)) {
		FUNC5(ah_attr, NULL,
				tmp & 0xfffff,
				(tmp >> 20) & 0xff,
				ah->av.hop_limit,
				ah->av.tclass);
		FUNC3(ah_attr, ah->av.rgid);
	}
	FUNC4(ah_attr, FUNC0(ah->av.rlid));
	FUNC7(ah_attr, ah->av.stat_rate_sl >> 4);
	FUNC6(ah_attr, ah->av.stat_rate_sl & 0xf);

	return 0;
}