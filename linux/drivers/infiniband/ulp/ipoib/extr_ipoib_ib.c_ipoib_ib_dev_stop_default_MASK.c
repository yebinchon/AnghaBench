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
struct ipoib_tx_buf {int /*<<< orphan*/ * skb; } ;
struct ipoib_rx_buf {int /*<<< orphan*/ * skb; int /*<<< orphan*/  mapping; } ;
struct ipoib_dev_priv {int tx_head; int tx_tail; int /*<<< orphan*/  recv_cq; int /*<<< orphan*/  qp; struct ipoib_rx_buf* rx_ring; struct ipoib_tx_buf* tx_ring; int /*<<< orphan*/  flags; } ;
struct ib_qp_attr {int /*<<< orphan*/  qp_state; } ;

/* Variables and functions */
 int HZ ; 
 int /*<<< orphan*/  IB_CQ_NEXT_COMP ; 
 int /*<<< orphan*/  IB_QPS_ERR ; 
 int /*<<< orphan*/  IB_QPS_RESET ; 
 int /*<<< orphan*/  IB_QP_STATE ; 
 int /*<<< orphan*/  IPOIB_FLAG_INITIALIZED ; 
 int /*<<< orphan*/  FUNC0 (struct ipoib_dev_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,struct ib_qp_attr*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct ipoib_dev_priv*,char*) ; 
 int /*<<< orphan*/  FUNC6 (struct ipoib_dev_priv*,struct ipoib_tx_buf*) ; 
 int /*<<< orphan*/  FUNC7 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC8 (struct net_device*) ; 
 struct ipoib_dev_priv* FUNC9 (struct net_device*) ; 
 int ipoib_recvq_size ; 
 int ipoib_sendq_size ; 
 int /*<<< orphan*/  FUNC10 (struct ipoib_dev_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct ipoib_dev_priv*,char*,...) ; 
 unsigned long jiffies ; 
 scalar_t__ FUNC12 (struct net_device*) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC14 (unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC15 (int,int) ; 

int FUNC16(struct net_device *dev)
{
	struct ipoib_dev_priv *priv = FUNC9(dev);
	struct ib_qp_attr qp_attr;
	unsigned long begin;
	struct ipoib_tx_buf *tx_req;
	int i;

	if (FUNC13(IPOIB_FLAG_INITIALIZED, &priv->flags))
		FUNC8(dev);

	FUNC4(dev);

	/*
	 * Move our QP to the error state and then reinitialize in
	 * when all work requests have completed or have been flushed.
	 */
	qp_attr.qp_state = IB_QPS_ERR;
	if (FUNC2(priv->qp, &qp_attr, IB_QP_STATE))
		FUNC0(priv, priv->qp, IB_QPS_ERR);

	/* Wait for all sends and receives to complete */
	begin = jiffies;

	while (priv->tx_head != priv->tx_tail || FUNC12(dev)) {
		if (FUNC14(jiffies, begin + 5 * HZ)) {
			FUNC11(priv,
				   "timing out; %d sends %d receives not completed\n",
				   priv->tx_head - priv->tx_tail,
				   FUNC12(dev));

			/*
			 * assume the HW is wedged and just free up
			 * all our pending work requests.
			 */
			while ((int)priv->tx_tail - (int)priv->tx_head < 0) {
				tx_req = &priv->tx_ring[priv->tx_tail &
							(ipoib_sendq_size - 1)];
				FUNC6(priv, tx_req);
				FUNC1(tx_req->skb);
				++priv->tx_tail;
			}

			for (i = 0; i < ipoib_recvq_size; ++i) {
				struct ipoib_rx_buf *rx_req;

				rx_req = &priv->rx_ring[i];
				if (!rx_req->skb)
					continue;
				FUNC10(priv,
						      priv->rx_ring[i].mapping);
				FUNC1(rx_req->skb);
				rx_req->skb = NULL;
			}

			goto timeout;
		}

		FUNC7(dev);

		FUNC15(1000, 2000);
	}

	FUNC5(priv, "All sends and receives done.\n");

timeout:
	qp_attr.qp_state = IB_QPS_RESET;
	if (FUNC2(priv->qp, &qp_attr, IB_QP_STATE))
		FUNC11(priv, "Failed to modify QP to RESET state\n");

	FUNC3(priv->recv_cq, IB_CQ_NEXT_COMP);

	return 0;
}