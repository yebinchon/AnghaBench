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
typedef  void net_device ;
struct ib_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int FUNC2 (void*,void*) ; 

__attribute__((used)) static bool FUNC3(struct ib_device *ib_dev, u8 port,
				struct net_device *rdma_ndev, void *cookie)
{
	bool res;

	if (!rdma_ndev)
		return false;

	if (rdma_ndev == cookie)
		return true;

	FUNC0();
	res = FUNC2(rdma_ndev, cookie);
	FUNC1();

	return res;
}