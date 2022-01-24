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
struct ipoib_tx_buf {int /*<<< orphan*/  skb; } ;
struct ipoib_dev_priv {int tx_tail; int tx_head; int /*<<< orphan*/  flags; } ;
struct ipoib_cm_tx {int tx_tail; struct ipoib_tx_buf* tx_ring; TYPE_1__* qp; int /*<<< orphan*/  dev; scalar_t__ tx_head; scalar_t__ id; } ;
struct TYPE_2__ {int /*<<< orphan*/  qp_num; } ;

/* Variables and functions */
 int HZ ; 
 int /*<<< orphan*/  IPOIB_FLAG_ADMIN_UP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (struct ipoib_dev_priv*,char*,int /*<<< orphan*/ ,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC4 (struct ipoib_dev_priv*,struct ipoib_tx_buf*) ; 
 struct ipoib_dev_priv* FUNC5 (int /*<<< orphan*/ ) ; 
 int ipoib_sendq_size ; 
 int /*<<< orphan*/  FUNC6 (struct ipoib_dev_priv*,char*,scalar_t__) ; 
 unsigned long jiffies ; 
 int /*<<< orphan*/  FUNC7 (struct ipoib_cm_tx*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC13 (unsigned long,unsigned long) ; 
 scalar_t__ FUNC14 (int) ; 
 int /*<<< orphan*/  FUNC15 (int,int) ; 
 int /*<<< orphan*/  FUNC16 (struct ipoib_tx_buf*) ; 

__attribute__((used)) static void FUNC17(struct ipoib_cm_tx *p)
{
	struct ipoib_dev_priv *priv = FUNC5(p->dev);
	struct ipoib_tx_buf *tx_req;
	unsigned long begin;

	FUNC3(priv, "Destroy active connection 0x%x head 0x%x tail 0x%x\n",
		  p->qp ? p->qp->qp_num : 0, p->tx_head, p->tx_tail);

	if (p->id)
		FUNC1(p->id);

	if (p->tx_ring) {
		/* Wait for all sends to complete */
		begin = jiffies;
		while ((int) p->tx_tail - (int) p->tx_head < 0) {
			if (FUNC13(jiffies, begin + 5 * HZ)) {
				FUNC6(priv, "timing out; %d sends not completed\n",
					   p->tx_head - p->tx_tail);
				goto timeout;
			}

			FUNC15(1000, 2000);
		}
	}

timeout:

	while ((int) p->tx_tail - (int) p->tx_head < 0) {
		tx_req = &p->tx_ring[p->tx_tail & (ipoib_sendq_size - 1)];
		FUNC4(priv, tx_req);
		FUNC0(tx_req->skb);
		FUNC9(p->dev);
		++p->tx_tail;
		++priv->tx_tail;
		if (FUNC14(priv->tx_head - priv->tx_tail == ipoib_sendq_size >> 1) &&
		    FUNC8(p->dev) &&
		    FUNC12(IPOIB_FLAG_ADMIN_UP, &priv->flags))
			FUNC11(p->dev);
		FUNC10(p->dev);
	}

	if (p->qp)
		FUNC2(p->qp);

	FUNC16(p->tx_ring);
	FUNC7(p);
}