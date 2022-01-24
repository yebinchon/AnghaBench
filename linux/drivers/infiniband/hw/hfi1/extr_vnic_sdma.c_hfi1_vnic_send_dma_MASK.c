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
typedef  int /*<<< orphan*/  u64 ;
struct vnic_txreq {size_t plen; int /*<<< orphan*/  txreq; int /*<<< orphan*/  pad; struct sk_buff* skb; struct hfi1_vnic_sdma* sdma; } ;
struct sk_buff {int dummy; } ;
struct sdma_engine {int dummy; } ;
struct hfi1_vnic_vport_info {struct hfi1_vnic_sdma* sdma; } ;
struct hfi1_vnic_sdma {int pkts_sent; int /*<<< orphan*/  wait; int /*<<< orphan*/  state; struct sdma_engine* sde; } ;
struct TYPE_2__ {int /*<<< orphan*/  txreq_cache; } ;
struct hfi1_devdata {TYPE_1__ vnic; } ;

/* Variables and functions */
 int EBUSY ; 
 int ECOMM ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 scalar_t__ HFI1_VNIC_SDMA_Q_ACTIVE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct sdma_engine*,struct vnic_txreq*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ *) ; 
 struct vnic_txreq* FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,struct vnic_txreq*) ; 
 int /*<<< orphan*/  FUNC8 (struct sdma_engine*) ; 
 int FUNC9 (struct sdma_engine*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC10 (struct hfi1_devdata*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC11 (int) ; 

int FUNC12(struct hfi1_devdata *dd, u8 q_idx,
		       struct hfi1_vnic_vport_info *vinfo,
		       struct sk_buff *skb, u64 pbc, u8 plen)
{
	struct hfi1_vnic_sdma *vnic_sdma = &vinfo->sdma[q_idx];
	struct sdma_engine *sde = vnic_sdma->sde;
	struct vnic_txreq *tx;
	int ret = -ECOMM;

	if (FUNC11(FUNC0(vnic_sdma->state) != HFI1_VNIC_SDMA_Q_ACTIVE))
		goto tx_err;

	if (FUNC11(!sde || !FUNC8(sde)))
		goto tx_err;

	tx = FUNC6(dd->vnic.txreq_cache, GFP_ATOMIC);
	if (FUNC11(!tx)) {
		ret = -ENOMEM;
		goto tx_err;
	}

	tx->sdma = vnic_sdma;
	tx->skb = skb;
	FUNC3(tx->pad, plen);
	tx->plen = plen;
	ret = FUNC1(sde, tx, pbc);
	if (FUNC11(ret))
		goto free_desc;

	ret = FUNC9(sde, FUNC4(&vnic_sdma->wait),
			      &tx->txreq, vnic_sdma->pkts_sent);
	/* When -ECOMM, sdma callback will be called with ABORT status */
	if (FUNC11(ret && FUNC11(ret != -ECOMM)))
		goto free_desc;

	if (!ret) {
		vnic_sdma->pkts_sent = true;
		FUNC5(vnic_sdma->pkts_sent, &vnic_sdma->wait);
	}
	return ret;

free_desc:
	FUNC10(dd, &tx->txreq);
	FUNC7(dd->vnic.txreq_cache, tx);
tx_err:
	if (ret != -EBUSY)
		FUNC2(skb);
	else
		vnic_sdma->pkts_sent = false;
	return ret;
}