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
struct TYPE_2__ {struct ib_gid_attr* sgid_attr; } ;
struct rdma_ah_attr {int ah_flags; int /*<<< orphan*/  port_num; TYPE_1__ grh; } ;
struct ib_global_route {struct ib_gid_attr const* sgid_attr; int /*<<< orphan*/  sgid_index; } ;
struct ib_gid_attr {int dummy; } ;
struct ib_device {int dummy; } ;

/* Variables and functions */
 int IB_AH_GRH ; 
 scalar_t__ FUNC0 (struct ib_gid_attr const*) ; 
 int FUNC1 (struct ib_gid_attr const*) ; 
 struct ib_global_route* FUNC2 (struct rdma_ah_attr*) ; 
 int FUNC3 (struct ib_device*,struct rdma_ah_attr*) ; 
 struct ib_gid_attr* FUNC4 (struct ib_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct ib_device *device,
			       struct rdma_ah_attr *ah_attr,
			       const struct ib_gid_attr **old_sgid_attr)
{
	const struct ib_gid_attr *sgid_attr;
	struct ib_global_route *grh;
	int ret;

	*old_sgid_attr = ah_attr->grh.sgid_attr;

	ret = FUNC3(device, ah_attr);
	if (ret)
		return ret;

	if (!(ah_attr->ah_flags & IB_AH_GRH))
		return 0;

	grh = FUNC2(ah_attr);
	if (grh->sgid_attr)
		return 0;

	sgid_attr =
		FUNC4(device, ah_attr->port_num, grh->sgid_index);
	if (FUNC0(sgid_attr))
		return FUNC1(sgid_attr);

	/* Move ownerhip of the kref into the ah_attr */
	grh->sgid_attr = sgid_attr;
	return 0;
}