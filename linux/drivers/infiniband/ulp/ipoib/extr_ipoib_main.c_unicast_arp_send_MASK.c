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
struct rdma_netdev {int /*<<< orphan*/  (* send ) (struct net_device*,struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;
struct TYPE_4__ {int /*<<< orphan*/  tx_dropped; } ;
struct net_device {TYPE_2__ stats; } ;
struct ipoib_pseudo_header {scalar_t__ hwaddr; } ;
struct ipoib_path {TYPE_1__* ah; int /*<<< orphan*/  pathrec; int /*<<< orphan*/  queue; int /*<<< orphan*/  query; } ;
struct ipoib_dev_priv {int /*<<< orphan*/  lock; int /*<<< orphan*/  broadcast; } ;
struct TYPE_3__ {int /*<<< orphan*/  ah; int /*<<< orphan*/  last_send; int /*<<< orphan*/  valid; } ;

/* Variables and functions */
 scalar_t__ IPOIB_MAX_PATH_REC_QUEUE ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*,struct ipoib_path*) ; 
 struct ipoib_path* FUNC2 (struct net_device*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC6 (struct ipoib_dev_priv*,struct ipoib_path*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (struct ipoib_dev_priv*,char*,int /*<<< orphan*/ ) ; 
 struct ipoib_dev_priv* FUNC8 (struct net_device*) ; 
 struct rdma_netdev* FUNC9 (struct net_device*) ; 
 struct ipoib_path* FUNC10 (struct net_device*,scalar_t__) ; 
 scalar_t__ FUNC11 (struct net_device*,struct ipoib_path*) ; 
 int /*<<< orphan*/  FUNC12 (struct sk_buff*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC17 (struct net_device*,struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC18(struct sk_buff *skb, struct net_device *dev,
			     struct ipoib_pseudo_header *phdr)
{
	struct ipoib_dev_priv *priv = FUNC8(dev);
	struct rdma_netdev *rn = FUNC9(dev);
	struct ipoib_path *path;
	unsigned long flags;

	FUNC15(&priv->lock, flags);

	/* no broadcast means that all paths are (going to be) not valid */
	if (!priv->broadcast)
		goto drop_and_unlock;

	path = FUNC2(dev, phdr->hwaddr + 4);
	if (!path || !path->ah || !path->ah->valid) {
		if (!path) {
			path = FUNC10(dev, phdr->hwaddr + 4);
			if (!path)
				goto drop_and_unlock;
			FUNC1(dev, path);
		} else {
			/*
			 * make sure there are no changes in the existing
			 * path record
			 */
			FUNC6(priv, path, phdr->hwaddr + 4);
		}
		if (!path->query && FUNC11(dev, path)) {
			goto drop_and_unlock;
		}

		if (FUNC14(&path->queue) < IPOIB_MAX_PATH_REC_QUEUE) {
			FUNC12(skb, phdr->hwaddr);
			FUNC3(&path->queue, skb);
			goto unlock;
		} else {
			goto drop_and_unlock;
		}
	}

	FUNC16(&priv->lock, flags);
	FUNC7(priv, "Send unicast ARP to %08x\n",
		  FUNC4(FUNC13(&path->pathrec)));
	path->ah->last_send = rn->send(dev, skb, path->ah->ah,
				       FUNC0(phdr->hwaddr));
	return;

drop_and_unlock:
	++dev->stats.tx_dropped;
	FUNC5(skb);
unlock:
	FUNC16(&priv->lock, flags);
}