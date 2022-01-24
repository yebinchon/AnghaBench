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
typedef  int /*<<< orphan*/  u32 ;
struct sk_buff {scalar_t__ len; scalar_t__ ip_summed; void* data; } ;
struct TYPE_7__ {int /*<<< orphan*/  tx_errors; int /*<<< orphan*/  tx_dropped; } ;
struct net_device {TYPE_3__ stats; } ;
struct ipoib_tx_buf {struct sk_buff* skb; } ;
struct TYPE_5__ {int /*<<< orphan*/  send_flags; } ;
struct TYPE_6__ {TYPE_1__ wr; } ;
struct ipoib_dev_priv {int max_send_sge; scalar_t__ mcast_mtu; int tx_head; int tx_tail; int /*<<< orphan*/  send_cq; TYPE_2__ tx_wr; int /*<<< orphan*/  ca; struct ipoib_tx_buf* tx_ring; } ;
struct ib_ah {int dummy; } ;
struct TYPE_8__ {unsigned int nr_frags; } ;

/* Variables and functions */
 scalar_t__ CHECKSUM_PARTIAL ; 
 int IB_CQ_NEXT_COMP ; 
 int IB_CQ_REPORT_MISSED_EVENTS ; 
 int /*<<< orphan*/  IB_SEND_IP_CSUM ; 
 scalar_t__ IPOIB_ENCAP_LEN ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*,struct sk_buff*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct ipoib_dev_priv*,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct ipoib_dev_priv*,char*,scalar_t__,struct ib_ah*,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ,struct ipoib_tx_buf*) ; 
 int /*<<< orphan*/  FUNC6 (struct ipoib_dev_priv*,struct ipoib_tx_buf*) ; 
 struct ipoib_dev_priv* FUNC7 (struct net_device*) ; 
 int ipoib_sendq_size ; 
 int /*<<< orphan*/  FUNC8 (struct ipoib_dev_priv*,char*,...) ; 
 scalar_t__ FUNC9 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC10 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC11 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC12 (struct net_device*) ; 
 int FUNC13 (struct ipoib_dev_priv*,int,struct ib_ah*,int /*<<< orphan*/ ,struct ipoib_tx_buf*,void*,int) ; 
 int /*<<< orphan*/  FUNC14 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC15 (struct sk_buff*) ; 
 scalar_t__ FUNC16 (struct sk_buff*) ; 
 scalar_t__ FUNC17 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC18 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC19 (struct sk_buff*,int) ; 
 TYPE_4__* FUNC20 (struct sk_buff*) ; 
 int FUNC21 (struct sk_buff*) ; 
 int FUNC22 (struct sk_buff*) ; 
 scalar_t__ FUNC23 (int) ; 

int FUNC24(struct net_device *dev, struct sk_buff *skb,
	       struct ib_ah *address, u32 dqpn)
{
	struct ipoib_dev_priv *priv = FUNC7(dev);
	struct ipoib_tx_buf *tx_req;
	int hlen, rc;
	void *phead;
	unsigned int usable_sge = priv->max_send_sge - !!FUNC15(skb);

	if (FUNC16(skb)) {
		hlen = FUNC21(skb) + FUNC22(skb);
		phead = skb->data;
		if (FUNC23(!FUNC19(skb, hlen))) {
			FUNC8(priv, "linear data too small\n");
			++dev->stats.tx_dropped;
			++dev->stats.tx_errors;
			FUNC0(skb);
			return -1;
		}
	} else {
		if (FUNC23(skb->len > priv->mcast_mtu + IPOIB_ENCAP_LEN)) {
			FUNC8(priv, "packet len %d (> %d) too long to send, dropping\n",
				   skb->len, priv->mcast_mtu + IPOIB_ENCAP_LEN);
			++dev->stats.tx_dropped;
			++dev->stats.tx_errors;
			FUNC2(dev, skb, priv->mcast_mtu);
			return -1;
		}
		phead = NULL;
		hlen  = 0;
	}
	if (FUNC20(skb)->nr_frags > usable_sge) {
		if (FUNC17(skb) < 0) {
			FUNC8(priv, "skb could not be linearized\n");
			++dev->stats.tx_dropped;
			++dev->stats.tx_errors;
			FUNC0(skb);
			return -1;
		}
		/* Does skb_linearize return ok without reducing nr_frags? */
		if (FUNC20(skb)->nr_frags > usable_sge) {
			FUNC8(priv, "too many frags after skb linearize\n");
			++dev->stats.tx_dropped;
			++dev->stats.tx_errors;
			FUNC0(skb);
			return -1;
		}
	}

	FUNC4(priv,
		       "sending packet, length=%d address=%p dqpn=0x%06x\n",
		       skb->len, address, dqpn);

	/*
	 * We put the skb into the tx_ring _before_ we call post_send()
	 * because it's entirely possible that the completion handler will
	 * run before we execute anything after the post_send().  That
	 * means we have to make sure everything is properly recorded and
	 * our state is consistent before we call post_send().
	 */
	tx_req = &priv->tx_ring[priv->tx_head & (ipoib_sendq_size - 1)];
	tx_req->skb = skb;
	if (FUNC23(FUNC5(priv->ca, tx_req))) {
		++dev->stats.tx_errors;
		FUNC0(skb);
		return -1;
	}

	if (skb->ip_summed == CHECKSUM_PARTIAL)
		priv->tx_wr.wr.send_flags |= IB_SEND_IP_CSUM;
	else
		priv->tx_wr.wr.send_flags &= ~IB_SEND_IP_CSUM;
	/* increase the tx_head after send success, but use it for queue state */
	if (priv->tx_head - priv->tx_tail == ipoib_sendq_size - 1) {
		FUNC3(priv, "TX ring full, stopping kernel net queue\n");
		FUNC10(dev);
	}

	FUNC18(skb);
	FUNC14(skb);

	if (FUNC9(dev))
		if (FUNC1(priv->send_cq, IB_CQ_NEXT_COMP |
				     IB_CQ_REPORT_MISSED_EVENTS) < 0)
			FUNC8(priv, "request notify on send CQ failed\n");

	rc = FUNC13(priv, priv->tx_head & (ipoib_sendq_size - 1),
		       address, dqpn, tx_req, phead, hlen);
	if (FUNC23(rc)) {
		FUNC8(priv, "post_send failed, error %d\n", rc);
		++dev->stats.tx_errors;
		FUNC6(priv, tx_req);
		FUNC0(skb);
		if (FUNC9(dev))
			FUNC12(dev);
		rc = 0;
	} else {
		FUNC11(dev);

		rc = priv->tx_head;
		++priv->tx_head;
	}
	return rc;
}