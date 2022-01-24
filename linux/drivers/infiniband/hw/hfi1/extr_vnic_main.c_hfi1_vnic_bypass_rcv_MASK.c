#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  size_t u8 ;
struct sk_buff {int /*<<< orphan*/  data; } ;
struct hfi1_vnic_vport_info {TYPE_4__* stats; int /*<<< orphan*/  netdev; struct hfi1_vnic_rx_queue* rxq; } ;
struct hfi1_vnic_rx_queue {int /*<<< orphan*/  napi; int /*<<< orphan*/  skbq; } ;
struct hfi1_packet {int /*<<< orphan*/  tlen; int /*<<< orphan*/  ebuf; TYPE_2__* rcd; } ;
struct TYPE_5__ {int /*<<< orphan*/  vesws; } ;
struct hfi1_devdata {TYPE_1__ vnic; } ;
struct TYPE_7__ {int /*<<< orphan*/  rx_fifo_errors; int /*<<< orphan*/  rx_nohandler; } ;
struct TYPE_8__ {TYPE_3__ netstats; int /*<<< orphan*/  rx_drop_state; } ;
struct TYPE_6__ {size_t vnic_q_idx; int /*<<< orphan*/  ctxt; struct hfi1_devdata* dd; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ HFI1_VNIC_RCV_Q_SIZE ; 
 int OPA_16B_L4_ETHR ; 
 int /*<<< orphan*/  ULONG_MAX ; 
 int /*<<< orphan*/  XA_PRESENT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct hfi1_devdata*,char*,int,int,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 struct sk_buff* FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC15 (int) ; 
 int /*<<< orphan*/  FUNC16 (char*,size_t) ; 
 int /*<<< orphan*/  vport_cntr_lock ; 
 struct hfi1_vnic_vport_info* FUNC17 (int /*<<< orphan*/ *,unsigned long*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct hfi1_vnic_vport_info* FUNC18 (int /*<<< orphan*/ *,int) ; 

void FUNC19(struct hfi1_packet *packet)
{
	struct hfi1_devdata *dd = packet->rcd->dd;
	struct hfi1_vnic_vport_info *vinfo = NULL;
	struct hfi1_vnic_rx_queue *rxq;
	struct sk_buff *skb;
	int l4_type, vesw_id = -1;
	u8 q_idx;

	l4_type = FUNC3(packet->ebuf);
	if (FUNC4(l4_type == OPA_16B_L4_ETHR)) {
		vesw_id = FUNC0(packet->ebuf);
		vinfo = FUNC18(&dd->vnic.vesws, vesw_id);

		/*
		 * In case of invalid vesw id, count the error on
		 * the first available vport.
		 */
		if (FUNC15(!vinfo)) {
			struct hfi1_vnic_vport_info *vinfo_tmp;
			unsigned long index = 0;

			vinfo_tmp = FUNC17(&dd->vnic.vesws, &index, ULONG_MAX,
					XA_PRESENT);
			if (vinfo_tmp) {
				FUNC13(&vport_cntr_lock);
				vinfo_tmp->stats[0].netstats.rx_nohandler++;
				FUNC14(&vport_cntr_lock);
			}
		}
	}

	if (FUNC15(!vinfo)) {
		FUNC2(dd, "vnic rcv err: l4 %d vesw id %d ctx %d\n",
			    l4_type, vesw_id, packet->rcd->ctxt);
		return;
	}

	q_idx = packet->rcd->vnic_q_idx;
	rxq = &vinfo->rxq[q_idx];
	if (FUNC15(!FUNC8(vinfo->netdev))) {
		vinfo->stats[q_idx].rx_drop_state++;
		FUNC11(&rxq->skbq);
		return;
	}

	if (FUNC15(FUNC10(&rxq->skbq) > HFI1_VNIC_RCV_Q_SIZE)) {
		vinfo->stats[q_idx].netstats.rx_fifo_errors++;
		return;
	}

	skb = FUNC7(vinfo->netdev, packet->tlen);
	if (FUNC15(!skb)) {
		vinfo->stats[q_idx].netstats.rx_fifo_errors++;
		return;
	}

	FUNC5(skb->data, packet->ebuf, packet->tlen);
	FUNC9(skb, packet->tlen);
	FUNC12(&rxq->skbq, skb);

	if (FUNC6(&rxq->napi)) {
		FUNC16("napi %d scheduling\n", q_idx);
		FUNC1(&rxq->napi);
	}
}