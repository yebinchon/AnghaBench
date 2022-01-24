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
struct net_device {int dummy; } ;
struct hfi1_vnic_vport_info {int vesw_id; int /*<<< orphan*/  lock; int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  HFI1_VNIC_UP ; 
 int /*<<< orphan*/  FUNC0 (struct hfi1_vnic_vport_info*) ; 
 int /*<<< orphan*/  FUNC1 (struct hfi1_vnic_vport_info*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct hfi1_vnic_vport_info* FUNC4 (struct net_device*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(struct net_device *netdev, int id)
{
	struct hfi1_vnic_vport_info *vinfo = FUNC4(netdev);
	bool reopen = false;

	/*
	 * If vesw_id is being changed, and if the vnic port is up,
	 * reset the vnic port to ensure new vesw_id gets picked up
	 */
	if (id != vinfo->vesw_id) {
		FUNC2(&vinfo->lock);
		if (FUNC5(HFI1_VNIC_UP, &vinfo->flags)) {
			FUNC0(vinfo);
			reopen = true;
		}

		vinfo->vesw_id = id;
		if (reopen)
			FUNC1(vinfo);

		FUNC3(&vinfo->lock);
	}
}