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
typedef  int /*<<< orphan*/  u64 ;
struct sk_buff {int /*<<< orphan*/  data; } ;
struct net_device {int dummy; } ;
struct ipoib_pseudo_header {int dummy; } ;
struct ipoib_dev_priv {TYPE_1__* rx_ring; int /*<<< orphan*/  ca; int /*<<< orphan*/  max_ib_mtu; } ;
struct TYPE_2__ {struct sk_buff* skb; int /*<<< orphan*/ * mapping; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_FROM_DEVICE ; 
 scalar_t__ IPOIB_HARD_LEN ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 struct sk_buff* FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct ipoib_dev_priv* FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*,int) ; 
 scalar_t__ FUNC7 (int) ; 

__attribute__((used)) static struct sk_buff *FUNC8(struct net_device *dev, int id)
{
	struct ipoib_dev_priv *priv = FUNC5(dev);
	struct sk_buff *skb;
	int buf_size;
	u64 *mapping;

	buf_size = FUNC0(priv->max_ib_mtu);

	skb = FUNC1(buf_size + IPOIB_HARD_LEN);
	if (FUNC7(!skb))
		return NULL;

	/*
	 * the IP header will be at IPOIP_HARD_LEN + IB_GRH_BYTES, that is
	 * 64 bytes aligned
	 */
	FUNC6(skb, sizeof(struct ipoib_pseudo_header));

	mapping = priv->rx_ring[id].mapping;
	mapping[0] = FUNC3(priv->ca, skb->data, buf_size,
				       DMA_FROM_DEVICE);
	if (FUNC7(FUNC4(priv->ca, mapping[0])))
		goto error;

	priv->rx_ring[id].skb = skb;
	return skb;
error:
	FUNC2(skb);
	return NULL;
}