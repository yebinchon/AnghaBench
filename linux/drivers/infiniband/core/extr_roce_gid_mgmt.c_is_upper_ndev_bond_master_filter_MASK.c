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
struct net_device {int dummy; } ;
struct ib_device {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ FUNC3 (struct net_device*,struct net_device*) ; 

__attribute__((used)) static bool
FUNC4(struct ib_device *ib_dev, u8 port,
				 struct net_device *rdma_ndev,
				 void *cookie)
{
	struct net_device *cookie_ndev = cookie;
	bool match = false;

	if (!rdma_ndev)
		return false;

	FUNC1();
	if (FUNC0(cookie_ndev) &&
	    FUNC3(rdma_ndev, cookie_ndev))
		match = true;
	FUNC2();
	return match;
}