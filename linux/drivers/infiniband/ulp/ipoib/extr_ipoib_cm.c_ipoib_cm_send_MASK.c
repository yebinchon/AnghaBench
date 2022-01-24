#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct sk_buff {scalar_t__ len; } ;
struct TYPE_5__ {int /*<<< orphan*/  tx_errors; int /*<<< orphan*/  tx_dropped; } ;
struct net_device {TYPE_2__ stats; } ;
struct ipoib_tx_buf {struct sk_buff* skb; } ;
struct ipoib_dev_priv {int tx_head; int tx_tail; int /*<<< orphan*/  send_napi; int /*<<< orphan*/  send_cq; int /*<<< orphan*/  ca; } ;
struct ipoib_cm_tx {int max_send_sge; scalar_t__ mtu; int tx_head; TYPE_1__* qp; struct ipoib_tx_buf* tx_ring; } ;
struct TYPE_6__ {unsigned int nr_frags; } ;
struct TYPE_4__ {int /*<<< orphan*/  qp_num; } ;

/* Variables and functions */
 int IB_CQ_NEXT_COMP ; 
 int IB_CQ_REPORT_MISSED_EVENTS ; 
 scalar_t__ IPOIB_ENCAP_LEN ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*,struct sk_buff*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct ipoib_dev_priv*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ipoib_dev_priv*,char*,int,scalar_t__,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ,struct ipoib_tx_buf*) ; 
 int /*<<< orphan*/  FUNC6 (struct ipoib_dev_priv*,struct ipoib_tx_buf*) ; 
 struct ipoib_dev_priv* FUNC7 (struct net_device*) ; 
 int ipoib_sendq_size ; 
 int /*<<< orphan*/  FUNC8 (struct ipoib_dev_priv*,char*,...) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC11 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC12 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC13 (struct net_device*) ; 
 int FUNC14 (struct ipoib_dev_priv*,struct ipoib_cm_tx*,int,struct ipoib_tx_buf*) ; 
 int /*<<< orphan*/  FUNC15 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC16 (struct sk_buff*) ; 
 scalar_t__ FUNC17 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC18 (struct sk_buff*) ; 
 TYPE_3__* FUNC19 (struct sk_buff*) ; 
 scalar_t__ FUNC20 (int) ; 

void FUNC21(struct net_device *dev, struct sk_buff *skb, struct ipoib_cm_tx *tx)
{
	struct ipoib_dev_priv *priv = FUNC7(dev);
	struct ipoib_tx_buf *tx_req;
	int rc;
	unsigned int usable_sge = tx->max_send_sge - !!FUNC16(skb);

	if (FUNC20(skb->len > tx->mtu)) {
		FUNC8(priv, "packet len %d (> %d) too long to send, dropping\n",
			   skb->len, tx->mtu);
		++dev->stats.tx_dropped;
		++dev->stats.tx_errors;
		FUNC2(dev, skb, tx->mtu - IPOIB_ENCAP_LEN);
		return;
	}
	if (FUNC19(skb)->nr_frags > usable_sge) {
		if (FUNC17(skb) < 0) {
			FUNC8(priv, "skb could not be linearized\n");
			++dev->stats.tx_dropped;
			++dev->stats.tx_errors;
			FUNC0(skb);
			return;
		}
		/* Does skb_linearize return ok without reducing nr_frags? */
		if (FUNC19(skb)->nr_frags > usable_sge) {
			FUNC8(priv, "too many frags after skb linearize\n");
			++dev->stats.tx_dropped;
			++dev->stats.tx_errors;
			FUNC0(skb);
			return;
		}
	}
	FUNC4(priv, "sending packet: head 0x%x length %d connection 0x%x\n",
		       tx->tx_head, skb->len, tx->qp->qp_num);

	/*
	 * We put the skb into the tx_ring _before_ we call post_send()
	 * because it's entirely possible that the completion handler will
	 * run before we execute anything after the post_send().  That
	 * means we have to make sure everything is properly recorded and
	 * our state is consistent before we call post_send().
	 */
	tx_req = &tx->tx_ring[tx->tx_head & (ipoib_sendq_size - 1)];
	tx_req->skb = skb;

	if (FUNC20(FUNC5(priv->ca, tx_req))) {
		++dev->stats.tx_errors;
		FUNC0(skb);
		return;
	}

	if ((priv->tx_head - priv->tx_tail) == ipoib_sendq_size - 1) {
		FUNC3(priv, "TX ring 0x%x full, stopping kernel net queue\n",
			  tx->qp->qp_num);
		FUNC11(dev);
	}

	FUNC18(skb);
	FUNC15(skb);

	if (FUNC10(dev)) {
		rc = FUNC1(priv->send_cq, IB_CQ_NEXT_COMP |
				      IB_CQ_REPORT_MISSED_EVENTS);
		if (FUNC20(rc < 0))
			FUNC8(priv, "IPoIB/CM:request notify on send CQ failed\n");
		else if (rc)
			FUNC9(&priv->send_napi);
	}

	rc = FUNC14(priv, tx, tx->tx_head & (ipoib_sendq_size - 1), tx_req);
	if (FUNC20(rc)) {
		FUNC8(priv, "IPoIB/CM:post_send failed, error %d\n", rc);
		++dev->stats.tx_errors;
		FUNC6(priv, tx_req);
		FUNC0(skb);

		if (FUNC10(dev))
			FUNC13(dev);
	} else {
		FUNC12(dev);
		++tx->tx_head;
		++priv->tx_head;
	}
}