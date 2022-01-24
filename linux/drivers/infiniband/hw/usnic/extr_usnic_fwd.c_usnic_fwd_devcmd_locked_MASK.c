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
typedef  int /*<<< orphan*/  u64 ;
struct usnic_fwd_dev {int /*<<< orphan*/  name; int /*<<< orphan*/  lock; struct net_device* netdev; } ;
struct net_device {int dummy; } ;
typedef  enum vnic_devcmd_cmd { ____Placeholder_vnic_devcmd_cmd } vnic_devcmd_cmd ;

/* Variables and functions */
 int CMD_DEL_FILTER ; 
 int ERR_EINVAL ; 
 int FUNC0 (struct net_device*,int,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,int,int,int) ; 

__attribute__((used)) static int FUNC4(struct usnic_fwd_dev *ufdev, int vnic_idx,
					enum vnic_devcmd_cmd cmd, u64 *a0,
					u64 *a1)
{
	int status;
	struct net_device *netdev = ufdev->netdev;

	FUNC1(&ufdev->lock);

	status = FUNC0(netdev,
			vnic_idx,
			cmd,
			a0, a1,
			1000);
	if (status) {
		if (status == ERR_EINVAL && cmd == CMD_DEL_FILTER) {
			FUNC2("Dev %s vnic idx %u cmd %u already deleted",
					ufdev->name, vnic_idx, cmd);
		} else {
			FUNC3("Dev %s vnic idx %u cmd %u failed with status %d\n",
					ufdev->name, vnic_idx, cmd,
					status);
		}
	} else {
		FUNC2("Dev %s vnic idx %u cmd %u success",
				ufdev->name, vnic_idx, cmd);
	}

	return status;
}