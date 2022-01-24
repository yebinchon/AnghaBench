#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct net_device {int dummy; } ;
struct hfi1_vnic_vport_info {int num_rx_q; int /*<<< orphan*/  flags; struct hfi1_vnic_rx_queue* rxq; int /*<<< orphan*/  vesw_id; struct net_device* netdev; struct hfi1_devdata* dd; } ;
struct hfi1_vnic_rx_queue {int /*<<< orphan*/  napi; int /*<<< orphan*/  skbq; } ;
struct TYPE_2__ {int /*<<< orphan*/  vesws; } ;
struct hfi1_devdata {TYPE_1__ vnic; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  HFI1_VNIC_UP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct hfi1_vnic_vport_info*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct hfi1_vnic_vport_info *vinfo)
{
	struct hfi1_devdata *dd = vinfo->dd;
	struct net_device *netdev = vinfo->netdev;
	int i, rc;

	/* ensure virtual eth switch id is valid */
	if (!vinfo->vesw_id)
		return -EINVAL;

	rc = FUNC5(&dd->vnic.vesws, vinfo->vesw_id, vinfo, GFP_KERNEL);
	if (rc < 0)
		return rc;

	for (i = 0; i < vinfo->num_rx_q; i++) {
		struct hfi1_vnic_rx_queue *rxq = &vinfo->rxq[i];

		FUNC4(&rxq->skbq);
		FUNC0(&rxq->napi);
	}

	FUNC1(netdev);
	FUNC2(netdev);
	FUNC3(HFI1_VNIC_UP, &vinfo->flags);

	return 0;
}