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
typedef  int /*<<< orphan*/  u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct net_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  I40IW_NO_VLAN ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  init_net ; 
 struct net_device* FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 

__attribute__((used)) static u16 FUNC4(u32 *addr)
{
	struct net_device *netdev;
	u16 vlan_id = I40IW_NO_VLAN;

	netdev = FUNC2(&init_net, FUNC1(addr[0]));
	if (netdev) {
		vlan_id = FUNC3(netdev);
		FUNC0(netdev);
	}
	return vlan_id;
}