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
struct rdma_ah_attr {scalar_t__ type; } ;
struct ib_udata {int dummy; } ;
struct ib_pd {int /*<<< orphan*/  device; } ;
struct ib_gid_attr {int dummy; } ;
struct ib_ah {int dummy; } ;

/* Variables and functions */
 struct ib_ah* FUNC0 (int) ; 
 scalar_t__ RDMA_AH_ATTR_TYPE_ROCE ; 
 int /*<<< orphan*/  RDMA_CREATE_AH_SLEEPABLE ; 
 struct ib_ah* FUNC1 (struct ib_pd*,struct rdma_ah_attr*,int /*<<< orphan*/ ,struct ib_udata*) ; 
 int FUNC2 (int /*<<< orphan*/ ,struct rdma_ah_attr*) ; 
 int FUNC3 (int /*<<< orphan*/ ,struct rdma_ah_attr*,struct ib_gid_attr const**) ; 
 int /*<<< orphan*/  FUNC4 (struct rdma_ah_attr*,struct ib_gid_attr const*) ; 

struct ib_ah *FUNC5(struct ib_pd *pd,
				  struct rdma_ah_attr *ah_attr,
				  struct ib_udata *udata)
{
	const struct ib_gid_attr *old_sgid_attr;
	struct ib_ah *ah;
	int err;

	err = FUNC3(pd->device, ah_attr, &old_sgid_attr);
	if (err)
		return FUNC0(err);

	if (ah_attr->type == RDMA_AH_ATTR_TYPE_ROCE) {
		err = FUNC2(pd->device, ah_attr);
		if (err) {
			ah = FUNC0(err);
			goto out;
		}
	}

	ah = FUNC1(pd, ah_attr, RDMA_CREATE_AH_SLEEPABLE, udata);

out:
	FUNC4(ah_attr, old_sgid_attr);
	return ah;
}