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
struct rdma_netdev {int (* detach_mcast ) (struct net_device*,int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ ) ;} ;
struct net_device {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  raw; } ;
struct TYPE_3__ {int /*<<< orphan*/  mlid; TYPE_2__ mgid; } ;
struct ipoib_mcast {int /*<<< orphan*/  flags; TYPE_1__ mcmember; int /*<<< orphan*/  mc; } ;
struct ipoib_dev_priv {int /*<<< orphan*/  ca; } ;

/* Variables and functions */
 int /*<<< orphan*/  IPOIB_MCAST_FLAG_ATTACHED ; 
 int /*<<< orphan*/  IPOIB_MCAST_FLAG_BUSY ; 
 int /*<<< orphan*/  IPOIB_MCAST_FLAG_SENDONLY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ipoib_dev_priv*,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct ipoib_dev_priv*,char*,int /*<<< orphan*/ ) ; 
 struct ipoib_dev_priv* FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct ipoib_dev_priv*,char*,...) ; 
 struct rdma_netdev* FUNC7 (struct net_device*) ; 
 int FUNC8 (struct net_device*,int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC11(struct net_device *dev, struct ipoib_mcast *mcast)
{
	struct ipoib_dev_priv *priv = FUNC5(dev);
	struct rdma_netdev *rn = FUNC7(dev);
	int ret = 0;

	if (FUNC9(IPOIB_MCAST_FLAG_BUSY, &mcast->flags))
		FUNC6(priv, "ipoib_mcast_leave on an in-flight join\n");

	if (!FUNC0(mcast->mc))
		FUNC2(mcast->mc);

	if (FUNC9(IPOIB_MCAST_FLAG_ATTACHED, &mcast->flags)) {
		FUNC4(priv, "leaving MGID %pI6\n",
				mcast->mcmember.mgid.raw);

		/* Remove ourselves from the multicast group */
		ret = rn->detach_mcast(dev, priv->ca, &mcast->mcmember.mgid,
				       FUNC1(mcast->mcmember.mlid));
		if (ret)
			FUNC6(priv, "ib_detach_mcast failed (result = %d)\n", ret);
	} else if (!FUNC10(IPOIB_MCAST_FLAG_SENDONLY, &mcast->flags))
		FUNC3(priv, "leaving with no mcmember but not a "
			  "SENDONLY join\n");

	return 0;
}