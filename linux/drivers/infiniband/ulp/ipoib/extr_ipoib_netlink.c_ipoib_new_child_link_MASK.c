#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  u16 ;
struct nlattr {int dummy; } ;
struct netlink_ext_ack {int dummy; } ;
struct net_device {scalar_t__ type; int /*<<< orphan*/  name; } ;
struct net {int dummy; } ;
struct ipoib_dev_priv {int /*<<< orphan*/  port; int /*<<< orphan*/  ca; int /*<<< orphan*/  pkey; int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 scalar_t__ ARPHRD_INFINIBAND ; 
 int EINVAL ; 
 int ENODEV ; 
 size_t IFLA_IPOIB_PKEY ; 
 size_t IFLA_LINK ; 
 int /*<<< orphan*/  IPOIB_FLAG_SUBINTERFACE ; 
 int /*<<< orphan*/  IPOIB_RTNL_CHILD ; 
 struct net_device* FUNC0 (struct net*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct ipoib_dev_priv*,struct ipoib_dev_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct net_device*,struct nlattr**,struct nlattr**,struct netlink_ext_ack*) ; 
 int /*<<< orphan*/  FUNC3 (struct ipoib_dev_priv*,char*) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct net_device*) ; 
 struct ipoib_dev_priv* FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct ipoib_dev_priv*,char*) ; 
 int /*<<< orphan*/  FUNC7 (struct nlattr*) ; 
 int /*<<< orphan*/  FUNC8 (struct nlattr*) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct net_device*) ; 

__attribute__((used)) static int FUNC11(struct net *src_net, struct net_device *dev,
				struct nlattr *tb[], struct nlattr *data[],
				struct netlink_ext_ack *extack)
{
	struct net_device *pdev;
	struct ipoib_dev_priv *ppriv;
	u16 child_pkey;
	int err;

	if (!tb[IFLA_LINK])
		return -EINVAL;

	pdev = FUNC0(src_net, FUNC8(tb[IFLA_LINK]));
	if (!pdev || pdev->type != ARPHRD_INFINIBAND)
		return -ENODEV;

	ppriv = FUNC5(pdev);

	if (FUNC9(IPOIB_FLAG_SUBINTERFACE, &ppriv->flags)) {
		FUNC6(ppriv, "child creation disallowed for child devices\n");
		return -EINVAL;
	}

	if (!data || !data[IFLA_IPOIB_PKEY]) {
		FUNC3(ppriv, "no pkey specified, using parent pkey\n");
		child_pkey  = ppriv->pkey;
	} else
		child_pkey  = FUNC7(data[IFLA_IPOIB_PKEY]);

	err = FUNC4(ppriv->ca, ppriv->port, dev->name, dev);
	if (err) {
		FUNC6(ppriv, "failed to initialize pkey device\n");
		return err;
	}

	err = FUNC1(ppriv, FUNC5(dev),
			       child_pkey, IPOIB_RTNL_CHILD);
	if (err)
		return err;

	if (data) {
		err = FUNC2(dev, tb, data, extack);
		if (err) {
			FUNC10(dev);
			return err;
		}
	}

	return 0;
}