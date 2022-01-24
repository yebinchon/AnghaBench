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
typedef  int u64 ;
struct usnic_fwd_dev {struct net_device* netdev; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_QP_DISABLE ; 
 int CMD_QP_RQWQ ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int,int,int) ; 
 int FUNC3 (struct usnic_fwd_dev*,int,int /*<<< orphan*/ ,int*,int*) ; 

int FUNC4(struct usnic_fwd_dev *ufdev, int vnic_idx, int qp_idx)
{
	int status;
	u64 a0, a1;
	struct net_device *pf_netdev;

	pf_netdev = ufdev->netdev;
	a0 = qp_idx;
	a1 = CMD_QP_RQWQ;

	status = FUNC3(ufdev, vnic_idx, CMD_QP_DISABLE,
			&a0, &a1);
	if (status) {
		FUNC2("PF %s VNIC Index %u RQ Index: %u DISABLE Failed with status %d",
				FUNC0(pf_netdev),
				vnic_idx,
				qp_idx,
				status);
	} else {
		FUNC1("PF %s VNIC Index %u RQ Index: %u DISABLED",
				FUNC0(pf_netdev),
				vnic_idx,
				qp_idx);
	}

	return status;
}