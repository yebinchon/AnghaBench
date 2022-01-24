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
typedef  int /*<<< orphan*/  u8 ;
struct rdma_ah_attr {int dummy; } ;
struct ib_wc {int dummy; } ;
struct ib_pd {int /*<<< orphan*/  device; } ;
struct ib_grh {int dummy; } ;
struct ib_ah {int dummy; } ;

/* Variables and functions */
 struct ib_ah* FUNC0 (int) ; 
 int /*<<< orphan*/  RDMA_CREATE_AH_SLEEPABLE ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ib_wc const*,struct ib_grh const*,struct rdma_ah_attr*) ; 
 struct ib_ah* FUNC2 (struct ib_pd*,struct rdma_ah_attr*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct rdma_ah_attr*) ; 

struct ib_ah *FUNC4(struct ib_pd *pd, const struct ib_wc *wc,
				   const struct ib_grh *grh, u8 port_num)
{
	struct rdma_ah_attr ah_attr;
	struct ib_ah *ah;
	int ret;

	ret = FUNC1(pd->device, port_num, wc, grh, &ah_attr);
	if (ret)
		return FUNC0(ret);

	ah = FUNC2(pd, &ah_attr, RDMA_CREATE_AH_SLEEPABLE);

	FUNC3(&ah_attr);
	return ah;
}