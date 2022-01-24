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
struct sk_buff {int dummy; } ;
struct net_device {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  skb_task; int /*<<< orphan*/  skb_queue; } ;
struct ipoib_dev_priv {TYPE_1__ cm; int /*<<< orphan*/  wq; } ;

/* Variables and functions */
 struct ipoib_dev_priv* FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*,unsigned int) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct sk_buff*) ; 

void FUNC5(struct net_device *dev, struct sk_buff *skb,
			   unsigned int mtu)
{
	struct ipoib_dev_priv *priv = FUNC0(dev);
	int e = FUNC3(&priv->cm.skb_queue);

	FUNC2(skb, mtu);

	FUNC4(&priv->cm.skb_queue, skb);
	if (e)
		FUNC1(priv->wq, &priv->cm.skb_task);
}