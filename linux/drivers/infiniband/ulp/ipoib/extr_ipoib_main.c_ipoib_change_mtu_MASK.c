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
struct net_device {int mtu; } ;
struct ipoib_dev_priv {int mcast_mtu; int admin_mtu; TYPE_1__* rn_ops; int /*<<< orphan*/  max_ib_mtu; } ;
struct TYPE_2__ {int (* ndo_change_mtu ) (struct net_device*,int) ;} ;

/* Variables and functions */
 int EINVAL ; 
 int ETH_MIN_MTU ; 
 int IPOIB_ENCAP_LEN ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct net_device*) ; 
 int FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct ipoib_dev_priv*,char*,int) ; 
 struct ipoib_dev_priv* FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct ipoib_dev_priv*,char*,int) ; 
 int FUNC6 (int,int) ; 
 int /*<<< orphan*/  FUNC7 (struct net_device*) ; 
 int FUNC8 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC9 (struct net_device*) ; 
 int FUNC10 (struct net_device*,int) ; 

__attribute__((used)) static int FUNC11(struct net_device *dev, int new_mtu)
{
	struct ipoib_dev_priv *priv = FUNC4(dev);
	int ret = 0;

	/* dev->mtu > 2K ==> connected mode */
	if (FUNC1(dev)) {
		if (new_mtu > FUNC2(dev))
			return -EINVAL;

		if (new_mtu > priv->mcast_mtu)
			FUNC5(priv, "mtu > %d will cause multicast packet drops.\n",
				   priv->mcast_mtu);

		dev->mtu = new_mtu;
		return 0;
	}

	if (new_mtu < (ETH_MIN_MTU + IPOIB_ENCAP_LEN) ||
	    new_mtu > FUNC0(priv->max_ib_mtu))
		return -EINVAL;

	priv->admin_mtu = new_mtu;

	if (priv->mcast_mtu < priv->admin_mtu)
		FUNC3(priv, "MTU must be smaller than the underlying "
				"link layer MTU - 4 (%u)\n", priv->mcast_mtu);

	new_mtu = FUNC6(priv->mcast_mtu, priv->admin_mtu);

	if (priv->rn_ops->ndo_change_mtu) {
		bool carrier_status = FUNC8(dev);

		FUNC7(dev);

		/* notify lower level on the real mtu */
		ret = priv->rn_ops->ndo_change_mtu(dev, new_mtu);

		if (carrier_status)
			FUNC9(dev);
	} else {
		dev->mtu = new_mtu;
	}

	return ret;
}