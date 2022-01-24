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
struct qedr_dev {int /*<<< orphan*/  gsi_ll2_handle; int /*<<< orphan*/  rdma_ctx; TYPE_3__* ops; TYPE_1__* pdev; } ;
struct TYPE_6__ {int /*<<< orphan*/  baddr; int /*<<< orphan*/  vaddr; int /*<<< orphan*/  len; } ;
struct qed_roce_ll2_packet {scalar_t__ roce_mode; int n_seg; TYPE_4__* payload; TYPE_2__ header; int /*<<< orphan*/  tx_dest; } ;
struct qed_ll2_tx_pkt_info {int enable_ip_cksum; int num_of_bds; int qed_roce_flavor; struct qed_roce_ll2_packet* cookie; int /*<<< orphan*/  first_frag_len; int /*<<< orphan*/  first_frag; int /*<<< orphan*/  tx_dest; scalar_t__ vlan; } ;
typedef  int /*<<< orphan*/  ll2_tx_pkt ;
typedef  enum qed_ll2_roce_flavor_type { ____Placeholder_qed_ll2_roce_flavor_type } qed_ll2_roce_flavor_type ;
struct TYPE_8__ {int /*<<< orphan*/  len; int /*<<< orphan*/  baddr; } ;
struct TYPE_7__ {int (* ll2_prepare_tx_packet ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct qed_ll2_tx_pkt_info*,int) ;int (* ll2_set_fragment_of_tx_packet ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;
struct TYPE_5__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct qedr_dev*,char*,int) ; 
 int QED_LL2_ROCE ; 
 int QED_LL2_RROCE ; 
 scalar_t__ ROCE_V1 ; 
 scalar_t__ ROCE_V2_IPV4 ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct qed_roce_ll2_packet*) ; 
 int /*<<< orphan*/  FUNC3 (struct qed_ll2_tx_pkt_info*,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct qed_ll2_tx_pkt_info*,int) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct qedr_dev *dev,
			    struct qed_roce_ll2_packet *pkt)
{
	enum qed_ll2_roce_flavor_type roce_flavor;
	struct qed_ll2_tx_pkt_info ll2_tx_pkt;
	int rc;
	int i;

	FUNC3(&ll2_tx_pkt, 0, sizeof(ll2_tx_pkt));

	roce_flavor = (pkt->roce_mode == ROCE_V1) ?
	    QED_LL2_ROCE : QED_LL2_RROCE;

	if (pkt->roce_mode == ROCE_V2_IPV4)
		ll2_tx_pkt.enable_ip_cksum = 1;

	ll2_tx_pkt.num_of_bds = 1 /* hdr */  + pkt->n_seg;
	ll2_tx_pkt.vlan = 0;
	ll2_tx_pkt.tx_dest = pkt->tx_dest;
	ll2_tx_pkt.qed_roce_flavor = roce_flavor;
	ll2_tx_pkt.first_frag = pkt->header.baddr;
	ll2_tx_pkt.first_frag_len = pkt->header.len;
	ll2_tx_pkt.cookie = pkt;

	/* tx header */
	rc = dev->ops->ll2_prepare_tx_packet(dev->rdma_ctx,
					     dev->gsi_ll2_handle,
					     &ll2_tx_pkt, 1);
	if (rc) {
		/* TX failed while posting header - release resources */
		FUNC1(&dev->pdev->dev, pkt->header.len,
				  pkt->header.vaddr, pkt->header.baddr);
		FUNC2(pkt);

		FUNC0(dev, "roce ll2 tx: header failed (rc=%d)\n", rc);
		return rc;
	}

	/* tx payload */
	for (i = 0; i < pkt->n_seg; i++) {
		rc = dev->ops->ll2_set_fragment_of_tx_packet(
			dev->rdma_ctx,
			dev->gsi_ll2_handle,
			pkt->payload[i].baddr,
			pkt->payload[i].len);

		if (rc) {
			/* if failed not much to do here, partial packet has
			 * been posted we can't free memory, will need to wait
			 * for completion
			 */
			FUNC0(dev, "ll2 tx: payload failed (rc=%d)\n", rc);
			return rc;
		}
	}

	return 0;
}