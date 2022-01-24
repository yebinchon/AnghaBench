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
struct net_device {scalar_t__ reg_state; } ;
struct ib_port_data {int /*<<< orphan*/  netdev_lock; int /*<<< orphan*/  netdev; } ;
struct TYPE_2__ {struct net_device* (* get_netdev ) (struct ib_device*,unsigned int) ;} ;
struct ib_device {TYPE_1__ ops; struct ib_port_data* port_data; } ;

/* Variables and functions */
 scalar_t__ NETREG_REGISTERED ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct net_device* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ib_device*,unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 struct net_device* FUNC7 (struct ib_device*,unsigned int) ; 

struct net_device *FUNC8(struct ib_device *ib_dev,
					unsigned int port)
{
	struct ib_port_data *pdata;
	struct net_device *res;

	if (!FUNC4(ib_dev, port))
		return NULL;

	pdata = &ib_dev->port_data[port];

	/*
	 * New drivers should use ib_device_set_netdev() not the legacy
	 * get_netdev().
	 */
	if (ib_dev->ops.get_netdev)
		res = ib_dev->ops.get_netdev(ib_dev, port);
	else {
		FUNC5(&pdata->netdev_lock);
		res = FUNC3(
			pdata->netdev, FUNC2(&pdata->netdev_lock));
		if (res)
			FUNC0(res);
		FUNC6(&pdata->netdev_lock);
	}

	/*
	 * If we are starting to unregister expedite things by preventing
	 * propagation of an unregistering netdev.
	 */
	if (res && res->reg_state != NETREG_REGISTERED) {
		FUNC1(res);
		return NULL;
	}

	return res;
}