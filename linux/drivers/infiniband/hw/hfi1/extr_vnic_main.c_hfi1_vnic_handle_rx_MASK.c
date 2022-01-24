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
struct sk_buff {int /*<<< orphan*/  protocol; } ;
struct hfi1_vnic_vport_info {int dummy; } ;
struct hfi1_vnic_rx_queue {int /*<<< orphan*/  napi; int /*<<< orphan*/  netdev; int /*<<< orphan*/  idx; struct hfi1_vnic_vport_info* vinfo; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct hfi1_vnic_rx_queue*,struct sk_buff*) ; 
 struct sk_buff* FUNC3 (struct hfi1_vnic_rx_queue*) ; 
 int /*<<< orphan*/  FUNC4 (struct hfi1_vnic_vport_info*,int /*<<< orphan*/ ,struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*) ; 
 scalar_t__ FUNC7 (int) ; 

__attribute__((used)) static void FUNC8(struct hfi1_vnic_rx_queue *rxq,
				int *work_done, int work_to_do)
{
	struct hfi1_vnic_vport_info *vinfo = rxq->vinfo;
	struct sk_buff *skb;
	int rc;

	while (1) {
		if (*work_done >= work_to_do)
			break;

		skb = FUNC3(rxq);
		if (FUNC7(!skb))
			break;

		rc = FUNC2(rxq, skb);
		/* update rx counters */
		FUNC4(vinfo, rxq->idx, skb, rc);
		if (FUNC7(rc)) {
			FUNC0(skb);
			continue;
		}

		FUNC6(skb);
		skb->protocol = FUNC1(skb, rxq->netdev);

		FUNC5(&rxq->napi, skb);
		(*work_done)++;
	}
}