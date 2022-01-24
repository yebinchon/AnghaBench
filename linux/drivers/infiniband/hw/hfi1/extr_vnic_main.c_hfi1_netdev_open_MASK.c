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
struct hfi1_vnic_vport_info {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int FUNC0 (struct hfi1_vnic_vport_info*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct hfi1_vnic_vport_info* FUNC3 (struct net_device*) ; 

__attribute__((used)) static int FUNC4(struct net_device *netdev)
{
	struct hfi1_vnic_vport_info *vinfo = FUNC3(netdev);
	int rc;

	FUNC1(&vinfo->lock);
	rc = FUNC0(vinfo);
	FUNC2(&vinfo->lock);
	return rc;
}