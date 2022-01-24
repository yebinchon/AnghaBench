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
typedef  union ib_gid {int dummy; } ib_gid ;
struct rdma_ucm_query_route_resp {TYPE_2__* ib_route; } ;
struct rdma_dev_addr {int dummy; } ;
struct TYPE_3__ {struct rdma_dev_addr dev_addr; } ;
struct rdma_route {TYPE_1__ addr; } ;
struct TYPE_4__ {int /*<<< orphan*/  sgid; int /*<<< orphan*/  dgid; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct rdma_dev_addr*,union ib_gid*) ; 
 int /*<<< orphan*/  FUNC1 (struct rdma_dev_addr*,union ib_gid*) ; 

__attribute__((used)) static void FUNC2(struct rdma_ucm_query_route_resp *resp,
			       struct rdma_route *route)
{
	struct rdma_dev_addr *dev_addr;

	dev_addr = &route->addr.dev_addr;
	FUNC0(dev_addr, (union ib_gid *) &resp->ib_route[0].dgid);
	FUNC1(dev_addr, (union ib_gid *) &resp->ib_route[0].sgid);
}