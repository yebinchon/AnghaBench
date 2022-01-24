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
struct TYPE_4__ {scalar_t__ dmac; } ;
struct TYPE_6__ {scalar_t__ raw; } ;
struct TYPE_5__ {TYPE_3__ dgid; } ;
struct rdma_ah_attr {TYPE_1__ roce; TYPE_2__ grh; } ;
struct in6_addr {int dummy; } ;
struct ib_device {int dummy; } ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int FUNC0 (struct ib_device*,struct rdma_ah_attr*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC2 (struct in6_addr*) ; 
 int /*<<< orphan*/  FUNC3 (struct in6_addr*,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,scalar_t__,int) ; 
 scalar_t__ FUNC5 (struct in6_addr*) ; 

__attribute__((used)) static int FUNC6(struct ib_device *device,
			       struct rdma_ah_attr *ah_attr)
{
	int ret = 0;

	if (FUNC5((struct in6_addr *)ah_attr->grh.dgid.raw)) {
		if (FUNC2((struct in6_addr *)ah_attr->grh.dgid.raw)) {
			__be32 addr = 0;

			FUNC4(&addr, ah_attr->grh.dgid.raw + 12, 4);
			FUNC1(addr, (char *)ah_attr->roce.dmac);
		} else {
			FUNC3((struct in6_addr *)ah_attr->grh.dgid.raw,
					(char *)ah_attr->roce.dmac);
		}
	} else {
		ret = FUNC0(device, ah_attr);
	}
	return ret;
}