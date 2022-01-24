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
struct net_device {int dummy; } ;
struct ipoib_dev_priv {int /*<<< orphan*/  port; int /*<<< orphan*/  ca; } ;
struct ib_port_attr {int /*<<< orphan*/  active_width; int /*<<< orphan*/  active_speed; } ;
struct TYPE_2__ {int speed; int phy_address; int /*<<< orphan*/  port; int /*<<< orphan*/  autoneg; int /*<<< orphan*/  duplex; } ;
struct ethtool_link_ksettings {TYPE_1__ base; } ;

/* Variables and functions */
 int /*<<< orphan*/  AUTONEG_ENABLE ; 
 int /*<<< orphan*/  DUPLEX_FULL ; 
 int /*<<< orphan*/  DUPLEX_UNKNOWN ; 
 int EINVAL ; 
 int /*<<< orphan*/  PORT_OTHER ; 
 int SPEED_UNKNOWN ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ib_port_attr*) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 struct ipoib_dev_priv* FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*) ; 

__attribute__((used)) static int FUNC5(struct net_device *netdev,
				    struct ethtool_link_ksettings *cmd)
{
	struct ipoib_dev_priv *priv = FUNC3(netdev);
	struct ib_port_attr attr;
	int ret, speed, width;

	if (!FUNC4(netdev)) {
		cmd->base.speed = SPEED_UNKNOWN;
		cmd->base.duplex = DUPLEX_UNKNOWN;
		return 0;
	}

	ret = FUNC0(priv->ca, priv->port, &attr);
	if (ret < 0)
		return -EINVAL;

	speed = FUNC1(attr.active_speed);
	width = FUNC2(attr.active_width);

	if (speed < 0 || width < 0)
		return -EINVAL;

	/* Except the following are set, the other members of
	 * the struct ethtool_link_settings are initialized to
	 * zero in the function __ethtool_get_link_ksettings.
	 */
	cmd->base.speed		 = speed * width;
	cmd->base.duplex	 = DUPLEX_FULL;

	cmd->base.phy_address	 = 0xFF;

	cmd->base.autoneg	 = AUTONEG_ENABLE;
	cmd->base.port		 = PORT_OTHER;

	return 0;
}