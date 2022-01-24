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
typedef  size_t u8 ;
struct hfi1_vnic_vport_info {size_t num_rx_q; struct hfi1_vnic_rx_queue* rxq; int /*<<< orphan*/  vesw_id; int /*<<< orphan*/  netdev; int /*<<< orphan*/  flags; struct hfi1_devdata* dd; } ;
struct hfi1_vnic_rx_queue {int /*<<< orphan*/  skbq; int /*<<< orphan*/  napi; } ;
struct TYPE_2__ {int /*<<< orphan*/  vesws; } ;
struct hfi1_devdata {TYPE_1__ vnic; } ;

/* Variables and functions */
 int /*<<< orphan*/  HFI1_VNIC_UP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct hfi1_devdata*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(struct hfi1_vnic_vport_info *vinfo)
{
	struct hfi1_devdata *dd = vinfo->dd;
	u8 i;

	FUNC0(HFI1_VNIC_UP, &vinfo->flags);
	FUNC3(vinfo->netdev);
	FUNC4(vinfo->netdev);
	FUNC6(&dd->vnic.vesws, vinfo->vesw_id);

	/* ensure irqs see the change */
	FUNC1(dd);

	/* remove unread skbs */
	for (i = 0; i < vinfo->num_rx_q; i++) {
		struct hfi1_vnic_rx_queue *rxq = &vinfo->rxq[i];

		FUNC2(&rxq->napi);
		FUNC5(&rxq->skbq);
	}
}