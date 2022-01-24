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
struct TYPE_4__ {int tx_dropped; } ;
struct net_device {TYPE_1__ stats; } ;
struct TYPE_5__ {int /*<<< orphan*/  raw; } ;
struct TYPE_6__ {TYPE_2__ mgid; } ;
struct ipoib_mcast {int /*<<< orphan*/  pkt_queue; scalar_t__ ah; TYPE_3__ mcmember; struct net_device* dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct ipoib_mcast*) ; 
 int /*<<< orphan*/  FUNC6 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC10(struct ipoib_mcast *mcast)
{
	struct net_device *dev = mcast->dev;
	int tx_dropped = 0;

	FUNC1(FUNC3(dev), "deleting multicast group %pI6\n",
			mcast->mcmember.mgid.raw);

	/* remove all neigh connected to this mcast */
	FUNC2(dev, mcast->mcmember.mgid.raw);

	if (mcast->ah)
		FUNC4(mcast->ah);

	while (!FUNC9(&mcast->pkt_queue)) {
		++tx_dropped;
		FUNC0(FUNC8(&mcast->pkt_queue));
	}

	FUNC6(dev);
	dev->stats.tx_dropped += tx_dropped;
	FUNC7(dev);

	FUNC5(mcast);
}