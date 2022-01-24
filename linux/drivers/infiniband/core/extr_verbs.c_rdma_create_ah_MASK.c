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
typedef  int /*<<< orphan*/  u32 ;
struct rdma_ah_attr {int dummy; } ;
struct ib_pd {int /*<<< orphan*/  device; } ;
struct ib_gid_attr {int dummy; } ;
struct ib_ah {int dummy; } ;

/* Variables and functions */
 struct ib_ah* FUNC0 (int) ; 
 struct ib_ah* FUNC1 (struct ib_pd*,struct rdma_ah_attr*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ ,struct rdma_ah_attr*,struct ib_gid_attr const**) ; 
 int /*<<< orphan*/  FUNC3 (struct rdma_ah_attr*,struct ib_gid_attr const*) ; 

struct ib_ah *FUNC4(struct ib_pd *pd, struct rdma_ah_attr *ah_attr,
			     u32 flags)
{
	const struct ib_gid_attr *old_sgid_attr;
	struct ib_ah *ah;
	int ret;

	ret = FUNC2(pd->device, ah_attr, &old_sgid_attr);
	if (ret)
		return FUNC0(ret);

	ah = FUNC1(pd, ah_attr, flags, NULL);

	FUNC3(ah_attr, old_sgid_attr);
	return ah;
}