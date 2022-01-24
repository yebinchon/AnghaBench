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
struct ib_ah {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  dgid; int /*<<< orphan*/  tclass; int /*<<< orphan*/  hop_limit; int /*<<< orphan*/  gid_index; int /*<<< orphan*/  flowlabel; int /*<<< orphan*/  stat_rate; int /*<<< orphan*/  port; int /*<<< orphan*/  sl; } ;
struct hns_roce_ah {TYPE_1__ av; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct rdma_ah_attr*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct rdma_ah_attr*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct rdma_ah_attr*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct rdma_ah_attr*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct rdma_ah_attr*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct rdma_ah_attr*,int /*<<< orphan*/ ) ; 
 struct hns_roce_ah* FUNC6 (struct ib_ah*) ; 

int FUNC7(struct ib_ah *ibah, struct rdma_ah_attr *ah_attr)
{
	struct hns_roce_ah *ah = FUNC6(ibah);

	FUNC0(ah_attr, 0, sizeof(*ah_attr));

	FUNC4(ah_attr, ah->av.sl);
	FUNC3(ah_attr, ah->av.port);
	FUNC5(ah_attr, ah->av.stat_rate);
	FUNC2(ah_attr, NULL, ah->av.flowlabel,
			ah->av.gid_index, ah->av.hop_limit, ah->av.tclass);
	FUNC1(ah_attr, ah->av.dgid);

	return 0;
}