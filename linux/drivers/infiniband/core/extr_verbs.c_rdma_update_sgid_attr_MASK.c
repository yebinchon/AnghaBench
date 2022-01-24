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
struct TYPE_2__ {struct ib_gid_attr const* sgid_attr; } ;
struct rdma_ah_attr {int ah_flags; TYPE_1__ grh; } ;
struct ib_gid_attr {int dummy; } ;

/* Variables and functions */
 int IB_AH_GRH ; 
 int /*<<< orphan*/  FUNC0 (struct ib_gid_attr const*) ; 
 int /*<<< orphan*/  FUNC1 (struct ib_gid_attr const*) ; 

__attribute__((used)) static const struct ib_gid_attr *
FUNC2(struct rdma_ah_attr *ah_attr,
		      const struct ib_gid_attr *old_attr)
{
	if (old_attr)
		FUNC1(old_attr);
	if (ah_attr->ah_flags & IB_AH_GRH) {
		FUNC0(ah_attr->grh.sgid_attr);
		return ah_attr->grh.sgid_attr;
	}
	return NULL;
}