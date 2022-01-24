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
 int /*<<< orphan*/  IB_CACHE_GID_DEFAULT_MODE_SET ; 
 int /*<<< orphan*/  FUNC0 (struct ib_device*,int /*<<< orphan*/ ,struct net_device*,unsigned long,int /*<<< orphan*/ ) ; 
 unsigned long FUNC1 (struct ib_device*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct ib_device *ib_dev, u8 port,
			     struct net_device *rdma_ndev, void *cookie)
{
	struct net_device *event_ndev = cookie;
	unsigned long gid_type_mask;

	gid_type_mask = FUNC1(ib_dev, port);
	FUNC0(ib_dev, port, event_ndev, gid_type_mask,
				     IB_CACHE_GID_DEFAULT_MODE_SET);
}