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
struct net_device {int /*<<< orphan*/  mtu; int /*<<< orphan*/  dev_addr; } ;
struct TYPE_3__ {int /*<<< orphan*/  send_flags; } ;
struct TYPE_4__ {TYPE_1__ wr; } ;
struct ipoib_dev_priv {int /*<<< orphan*/  mcast_mtu; int /*<<< orphan*/  flags; TYPE_2__ tx_wr; } ;

/* Variables and functions */
 int EBUSY ; 
 int EINVAL ; 
 int /*<<< orphan*/  IB_SEND_IP_CSUM ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IPOIB_FLAG_ADMIN_CM ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*) ; 
 struct ipoib_dev_priv* FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct ipoib_dev_priv*,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (char const*,char*) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int FUNC14(struct net_device *dev, const char *buf)
{
	struct ipoib_dev_priv *priv = FUNC5(dev);

	if ((FUNC13(IPOIB_FLAG_ADMIN_CM, &priv->flags) &&
	     !FUNC12(buf, "connected\n")) ||
	     (!FUNC13(IPOIB_FLAG_ADMIN_CM, &priv->flags) &&
	     !FUNC12(buf, "datagram\n"))) {
		return 0;
	}

	/* flush paths if we switch modes so that connections are restarted */
	if (FUNC0(dev->dev_addr) && !FUNC12(buf, "connected\n")) {
		FUNC11(IPOIB_FLAG_ADMIN_CM, &priv->flags);
		FUNC6(priv, "enabling connected mode "
			   "will cause multicast packet drops\n");
		FUNC8(dev);
		FUNC2(dev, FUNC3(dev));
		FUNC10();
		priv->tx_wr.wr.send_flags &= ~IB_SEND_IP_CSUM;

		FUNC4(dev);
		return (!FUNC9()) ? -EBUSY : 0;
	}

	if (!FUNC12(buf, "datagram\n")) {
		FUNC1(IPOIB_FLAG_ADMIN_CM, &priv->flags);
		FUNC8(dev);
		FUNC2(dev, FUNC7(priv->mcast_mtu, dev->mtu));
		FUNC10();
		FUNC4(dev);
		return (!FUNC9()) ? -EBUSY : 0;
	}

	return -EINVAL;
}