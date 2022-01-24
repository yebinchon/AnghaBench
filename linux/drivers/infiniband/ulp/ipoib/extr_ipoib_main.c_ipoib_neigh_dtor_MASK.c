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
struct sk_buff {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  tx_dropped; } ;
struct net_device {TYPE_1__ stats; } ;
struct ipoib_neigh {scalar_t__ daddr; int /*<<< orphan*/  queue; scalar_t__ ah; struct net_device* dev; } ;
struct TYPE_4__ {int /*<<< orphan*/  flushed; int /*<<< orphan*/  entries; } ;
struct ipoib_dev_priv {TYPE_2__ ntbl; int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  IPOIB_NEIGH_TBL_FLUSH ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 struct sk_buff* FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 scalar_t__ FUNC6 (struct ipoib_neigh*) ; 
 int /*<<< orphan*/  FUNC7 (struct ipoib_dev_priv*,char*,int /*<<< orphan*/ ,scalar_t__) ; 
 struct ipoib_dev_priv* FUNC8 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (struct ipoib_neigh*) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void FUNC12(struct ipoib_neigh *neigh)
{
	/* neigh reference count was dropprd to zero */
	struct net_device *dev = neigh->dev;
	struct ipoib_dev_priv *priv = FUNC8(dev);
	struct sk_buff *skb;
	if (neigh->ah)
		FUNC9(neigh->ah);
	while ((skb = FUNC1(&neigh->queue))) {
		++dev->stats.tx_dropped;
		FUNC4(skb);
	}
	if (FUNC6(neigh))
		FUNC5(FUNC6(neigh));
	FUNC7(FUNC8(dev),
		  "neigh free for %06x %pI6\n",
		  FUNC0(neigh->daddr),
		  neigh->daddr + 4);
	FUNC10(neigh);
	if (FUNC2(&priv->ntbl.entries)) {
		if (FUNC11(IPOIB_NEIGH_TBL_FLUSH, &priv->flags))
			FUNC3(&priv->ntbl.flushed);
	}
}