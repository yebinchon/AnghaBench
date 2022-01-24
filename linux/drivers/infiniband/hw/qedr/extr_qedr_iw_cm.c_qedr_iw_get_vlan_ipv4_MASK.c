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
typedef  int u16 ;
struct qedr_dev {int dummy; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  init_net ; 
 struct net_device* FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct net_device*) ; 

__attribute__((used)) static u16 FUNC4(struct qedr_dev *dev, u32 *addr)
{
	struct net_device *ndev;
	u16 vlan_id = 0;

	ndev = FUNC2(&init_net, FUNC1(addr[0]));

	if (ndev) {
		vlan_id = FUNC3(ndev);
		FUNC0(ndev);
	}
	if (vlan_id == 0xffff)
		vlan_id = 0;
	return vlan_id;
}