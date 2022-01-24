#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  union ib_gid {int dummy; } ib_gid ;
typedef  int /*<<< orphan*/  u8 ;
struct sk_buff {int dummy; } ;
struct rdma_netdev {int /*<<< orphan*/  (* send ) (struct net_device*,struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;
struct TYPE_9__ {int /*<<< orphan*/  tx_dropped; } ;
struct net_device {TYPE_4__ stats; } ;
struct ipoib_pseudo_header {int dummy; } ;
struct ipoib_neigh {int /*<<< orphan*/  list; TYPE_5__* ah; } ;
struct TYPE_7__ {int /*<<< orphan*/  raw; } ;
struct TYPE_8__ {TYPE_2__ mgid; } ;
struct ipoib_mcast {TYPE_5__* ah; int /*<<< orphan*/  neigh_list; int /*<<< orphan*/  flags; int /*<<< orphan*/  pkt_queue; int /*<<< orphan*/  list; TYPE_3__ mcmember; } ;
struct ipoib_dev_priv {int /*<<< orphan*/  lock; int /*<<< orphan*/  multicast_list; TYPE_1__* broadcast; int /*<<< orphan*/  flags; } ;
struct TYPE_10__ {int valid; int /*<<< orphan*/  ah; int /*<<< orphan*/  last_send; int /*<<< orphan*/  ref; } ;
struct TYPE_6__ {int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  IB_MULTICAST_QPN ; 
 int /*<<< orphan*/  IPOIB_FLAG_OPER_UP ; 
 scalar_t__ IPOIB_MAX_MCAST_QUEUE ; 
 int /*<<< orphan*/  IPOIB_MCAST_FLAG_ATTACHED ; 
 int /*<<< orphan*/  IPOIB_MCAST_FLAG_BUSY ; 
 int /*<<< orphan*/  IPOIB_MCAST_FLAG_SENDONLY ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*,struct ipoib_mcast*) ; 
 struct ipoib_mcast* FUNC1 (struct net_device*,void*) ; 
 int /*<<< orphan*/  FUNC2 (struct ipoib_dev_priv*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (struct ipoib_dev_priv*,char*,void*) ; 
 struct ipoib_mcast* FUNC5 (struct net_device*,int /*<<< orphan*/ ) ; 
 struct ipoib_neigh* FUNC6 (int /*<<< orphan*/ *,struct net_device*) ; 
 struct ipoib_neigh* FUNC7 (struct net_device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct ipoib_neigh*) ; 
 struct ipoib_dev_priv* FUNC9 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC10 (struct ipoib_dev_priv*,char*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,void*,int) ; 
 struct rdma_netdev* FUNC15 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (struct sk_buff*,int) ; 
 scalar_t__ FUNC18 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC22 (struct net_device*,struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void FUNC24(struct net_device *dev, u8 *daddr, struct sk_buff *skb)
{
	struct ipoib_dev_priv *priv = FUNC9(dev);
	struct rdma_netdev *rn = FUNC15(dev);
	struct ipoib_mcast *mcast;
	unsigned long flags;
	void *mgid = daddr + 4;

	FUNC20(&priv->lock, flags);

	if (!FUNC23(IPOIB_FLAG_OPER_UP, &priv->flags)		||
	    !priv->broadcast					||
	    !FUNC23(IPOIB_MCAST_FLAG_ATTACHED, &priv->broadcast->flags)) {
		++dev->stats.tx_dropped;
		FUNC3(skb);
		goto unlock;
	}

	mcast = FUNC1(dev, mgid);
	if (!mcast || !mcast->ah) {
		if (!mcast) {
			/* Let's create a new send only group now */
			FUNC4(priv, "setting up send only multicast group for %pI6\n",
					mgid);

			mcast = FUNC5(dev, 0);
			if (!mcast) {
				FUNC10(priv, "unable to allocate memory "
					   "for multicast structure\n");
				++dev->stats.tx_dropped;
				FUNC3(skb);
				goto unlock;
			}

			FUNC16(IPOIB_MCAST_FLAG_SENDONLY, &mcast->flags);
			FUNC14(mcast->mcmember.mgid.raw, mgid,
			       sizeof (union ib_gid));
			FUNC0(dev, mcast);
			FUNC12(&mcast->list, &priv->multicast_list);
		}
		if (FUNC18(&mcast->pkt_queue) < IPOIB_MAX_MCAST_QUEUE) {
			/* put pseudoheader back on for next time */
			FUNC17(skb, sizeof(struct ipoib_pseudo_header));
			FUNC19(&mcast->pkt_queue, skb);
		} else {
			++dev->stats.tx_dropped;
			FUNC3(skb);
		}
		if (!FUNC23(IPOIB_MCAST_FLAG_BUSY, &mcast->flags)) {
			FUNC2(priv, NULL, 0);
		}
	} else {
		struct ipoib_neigh *neigh;

		FUNC21(&priv->lock, flags);
		neigh = FUNC7(dev, daddr);
		FUNC20(&priv->lock, flags);
		if (!neigh) {
			neigh = FUNC6(daddr, dev);
			/* Make sure that the neigh will be added only
			 * once to mcast list.
			 */
			if (neigh && FUNC13(&neigh->list)) {
				FUNC11(&mcast->ah->ref);
				neigh->ah	= mcast->ah;
				neigh->ah->valid = 1;
				FUNC12(&neigh->list, &mcast->neigh_list);
			}
		}
		FUNC21(&priv->lock, flags);
		mcast->ah->last_send = rn->send(dev, skb, mcast->ah->ah,
						IB_MULTICAST_QPN);
		if (neigh)
			FUNC8(neigh);
		return;
	}

unlock:
	FUNC21(&priv->lock, flags);
}