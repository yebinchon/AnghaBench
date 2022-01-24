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
struct TYPE_2__ {int /*<<< orphan*/  parent; } ;
struct net_device {TYPE_1__ dev; } ;
struct ethtool_drvinfo {int /*<<< orphan*/  bus_info; int /*<<< orphan*/  version; int /*<<< orphan*/  driver; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  opa_vnic_driver_name ; 
 int /*<<< orphan*/  opa_vnic_driver_version ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC2(struct net_device *netdev,
			     struct ethtool_drvinfo *drvinfo)
{
	FUNC1(drvinfo->driver, opa_vnic_driver_name, sizeof(drvinfo->driver));
	FUNC1(drvinfo->version, opa_vnic_driver_version,
		sizeof(drvinfo->version));
	FUNC1(drvinfo->bus_info, FUNC0(netdev->dev.parent),
		sizeof(drvinfo->bus_info));
}