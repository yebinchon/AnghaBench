#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  tx_bytes; int /*<<< orphan*/  tx_packets; } ;
struct net_device {TYPE_1__ stats; } ;
struct ipoib_tx_buf {TYPE_2__* skb; } ;
struct ipoib_qp_state_validate {int /*<<< orphan*/  work; struct ipoib_dev_priv* priv; } ;
struct ipoib_dev_priv {unsigned int tx_tail; unsigned int tx_head; int /*<<< orphan*/  wq; int /*<<< orphan*/  flags; struct ipoib_tx_buf* tx_ring; } ;
struct ib_wc {unsigned int wr_id; int /*<<< orphan*/  vendor_err; int /*<<< orphan*/  status; } ;
struct TYPE_4__ {scalar_t__ len; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  IB_WC_SUCCESS ; 
 int /*<<< orphan*/  IB_WC_WR_FLUSH_ERR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IPOIB_FLAG_ADMIN_UP ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (struct ipoib_dev_priv*,char*,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ipoib_dev_priv*,struct ipoib_tx_buf*) ; 
 struct ipoib_dev_priv* FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  ipoib_qp_state_validate_work ; 
 unsigned int ipoib_sendq_size ; 
 int /*<<< orphan*/  FUNC5 (struct ipoib_dev_priv*,char*,unsigned int,unsigned int,...) ; 
 struct ipoib_qp_state_validate* FUNC6 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC8 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC11 (int) ; 

__attribute__((used)) static void FUNC12(struct net_device *dev, struct ib_wc *wc)
{
	struct ipoib_dev_priv *priv = FUNC4(dev);
	unsigned int wr_id = wc->wr_id;
	struct ipoib_tx_buf *tx_req;

	FUNC2(priv, "send completion: id %d, status: %d\n",
		       wr_id, wc->status);

	if (FUNC11(wr_id >= ipoib_sendq_size)) {
		FUNC5(priv, "send completion event with wrid %d (> %d)\n",
			   wr_id, ipoib_sendq_size);
		return;
	}

	tx_req = &priv->tx_ring[wr_id];

	FUNC3(priv, tx_req);

	++dev->stats.tx_packets;
	dev->stats.tx_bytes += tx_req->skb->len;

	FUNC1(tx_req->skb);

	++priv->tx_tail;

	if (FUNC11(FUNC7(dev) &&
		     ((priv->tx_head - priv->tx_tail) <= ipoib_sendq_size >> 1) &&
		     FUNC10(IPOIB_FLAG_ADMIN_UP, &priv->flags)))
		FUNC8(dev);

	if (wc->status != IB_WC_SUCCESS &&
	    wc->status != IB_WC_WR_FLUSH_ERR) {
		struct ipoib_qp_state_validate *qp_work;
		FUNC5(priv,
			   "failed send event (status=%d, wrid=%d vend_err %#x)\n",
			   wc->status, wr_id, wc->vendor_err);
		qp_work = FUNC6(sizeof(*qp_work), GFP_ATOMIC);
		if (!qp_work)
			return;

		FUNC0(&qp_work->work, ipoib_qp_state_validate_work);
		qp_work->priv = priv;
		FUNC9(priv->wq, &qp_work->work);
	}
}