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
typedef  int u16 ;
struct net_device {int /*<<< orphan*/  dev_addr; } ;
struct ib_gid_attr {int /*<<< orphan*/  ndev; } ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  get_lower_dev_vlan ; 
 scalar_t__ FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 struct net_device* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int FUNC6 (struct net_device*) ; 

int FUNC7(const struct ib_gid_attr *attr,
			    u16 *vlan_id, u8 *smac)
{
	struct net_device *ndev;

	FUNC4();
	ndev = FUNC3(attr->ndev);
	if (!ndev) {
		FUNC5();
		return -ENODEV;
	}
	if (smac)
		FUNC0(smac, ndev->dev_addr);
	if (vlan_id) {
		*vlan_id = 0xffff;
		if (FUNC1(ndev)) {
			*vlan_id = FUNC6(ndev);
		} else {
			/* If the netdev is upper device and if it's lower
			 * device is vlan device, consider vlan id of the
			 * the lower vlan device for this gid entry.
			 */
			FUNC2(attr->ndev,
					get_lower_dev_vlan, vlan_id);
		}
	}
	FUNC5();
	return 0;
}