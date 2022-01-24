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
struct in6_addr {int dummy; } ;
typedef  struct in6_addr u8 ;
struct TYPE_5__ {int /*<<< orphan*/  dmac; } ;
struct rdma_ah_attr {TYPE_2__ roce; } ;
struct ocrdma_dev {int dummy; } ;
typedef  int /*<<< orphan*/  in6 ;
struct TYPE_4__ {int /*<<< orphan*/  raw; } ;
struct TYPE_6__ {TYPE_1__ dgid; } ;

/* Variables and functions */
 int ETH_ALEN ; 
 int /*<<< orphan*/  FUNC0 (struct in6_addr*,int /*<<< orphan*/ ,int) ; 
 TYPE_3__* FUNC1 (struct rdma_ah_attr*) ; 
 int /*<<< orphan*/  FUNC2 (struct in6_addr*,struct in6_addr*) ; 
 int /*<<< orphan*/  FUNC3 (struct in6_addr*,struct in6_addr*) ; 
 scalar_t__ FUNC4 (struct in6_addr*) ; 
 scalar_t__ FUNC5 (struct in6_addr*) ; 

__attribute__((used)) static inline int FUNC6(struct ocrdma_dev *dev,
		struct rdma_ah_attr *ah_attr, u8 *mac_addr)
{
	struct in6_addr in6;

	FUNC0(&in6, FUNC1(ah_attr)->dgid.raw, sizeof(in6));
	if (FUNC4(&in6))
		FUNC3(&in6, mac_addr);
	else if (FUNC5(&in6))
		FUNC2(&in6, mac_addr);
	else
		FUNC0(mac_addr, ah_attr->roce.dmac, ETH_ALEN);
	return 0;
}