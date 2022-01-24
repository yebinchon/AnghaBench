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
struct TYPE_3__ {int /*<<< orphan*/  member_0; } ;
union ib_gid {TYPE_1__ member_0; } ;
typedef  int /*<<< orphan*/  u8 ;
struct rdma_ah_attr {int dummy; } ;
struct qedr_dev {int dummy; } ;
struct in6_addr {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  raw; } ;
struct ib_global_route {TYPE_2__ dgid; } ;
typedef  int /*<<< orphan*/  in6 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct qedr_dev*,char*) ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,union ib_gid*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct in6_addr*,int /*<<< orphan*/ ,int) ; 
 struct ib_global_route* FUNC5 (struct rdma_ah_attr*) ; 
 int /*<<< orphan*/ * FUNC6 (struct rdma_ah_attr*) ; 

__attribute__((used)) static inline int FUNC7(struct qedr_dev *dev,
				struct rdma_ah_attr *ah_attr, u8 *mac_addr)
{
	union ib_gid zero_sgid = { { 0 } };
	struct in6_addr in6;
	const struct ib_global_route *grh = FUNC5(ah_attr);
	u8 *dmac;

	if (!FUNC3(&grh->dgid, &zero_sgid, sizeof(union ib_gid))) {
		FUNC0(dev, "Local port GID not supported\n");
		FUNC1(mac_addr);
		return -EINVAL;
	}

	FUNC4(&in6, grh->dgid.raw, sizeof(in6));
	dmac = FUNC6(ah_attr);
	if (!dmac)
		return -EINVAL;
	FUNC2(mac_addr, dmac);

	return 0;
}