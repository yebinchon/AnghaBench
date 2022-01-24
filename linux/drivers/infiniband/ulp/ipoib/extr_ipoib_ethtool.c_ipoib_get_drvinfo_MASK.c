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
struct net_device {int dummy; } ;
struct ipoib_dev_priv {TYPE_2__* ca; } ;
struct ethtool_drvinfo {int /*<<< orphan*/  driver; int /*<<< orphan*/  version; int /*<<< orphan*/  bus_info; int /*<<< orphan*/  fw_version; } ;
struct TYPE_3__ {int /*<<< orphan*/  parent; } ;
struct TYPE_4__ {TYPE_1__ dev; } ;

/* Variables and functions */
 char* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 char* ipoib_driver_version ; 
 struct ipoib_dev_priv* FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static void FUNC4(struct net_device *netdev,
			      struct ethtool_drvinfo *drvinfo)
{
	struct ipoib_dev_priv *priv = FUNC2(netdev);

	FUNC1(priv->ca, drvinfo->fw_version);

	FUNC3(drvinfo->bus_info, FUNC0(priv->ca->dev.parent),
		sizeof(drvinfo->bus_info));

	FUNC3(drvinfo->version, ipoib_driver_version,
		sizeof(drvinfo->version));

	FUNC3(drvinfo->driver, "ib_ipoib", sizeof(drvinfo->driver));
}