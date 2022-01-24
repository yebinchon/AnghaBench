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
 int /*<<< orphan*/  FUNC0 (struct ib_device*,int /*<<< orphan*/ ,struct net_device*,struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 struct net_device* FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 

__attribute__((used)) static void FUNC6(struct ib_device *ib_dev, u8 port,
					struct net_device *rdma_ndev,
					void *cookie)
{
	struct net_device *master_ndev;

	FUNC4();
	master_ndev = FUNC3(rdma_ndev);
	if (master_ndev)
		FUNC1(master_ndev);
	FUNC5();

	if (master_ndev) {
		FUNC0(ib_dev, port, rdma_ndev,
						master_ndev);
		FUNC2(master_ndev);
	}
}