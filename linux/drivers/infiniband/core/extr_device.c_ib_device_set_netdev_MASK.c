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
struct net_device {int dummy; } ;
struct ib_port_data {int /*<<< orphan*/  netdev_lock; int /*<<< orphan*/  netdev; } ;
struct ib_device {struct ib_port_data* port_data; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct ib_port_data*) ; 
 int FUNC1 (struct ib_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,struct net_device*) ; 
 struct net_device* FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct ib_device*,unsigned int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned long) ; 

int FUNC10(struct ib_device *ib_dev, struct net_device *ndev,
			 unsigned int port)
{
	struct net_device *old_ndev;
	struct ib_port_data *pdata;
	unsigned long flags;
	int ret;

	/*
	 * Drivers wish to call this before ib_register_driver, so we have to
	 * setup the port data early.
	 */
	ret = FUNC1(ib_dev);
	if (ret)
		return ret;

	if (!FUNC7(ib_dev, port))
		return -EINVAL;

	pdata = &ib_dev->port_data[port];
	FUNC8(&pdata->netdev_lock, flags);
	old_ndev = FUNC6(
		pdata->netdev, FUNC4(&pdata->netdev_lock));
	if (old_ndev == ndev) {
		FUNC9(&pdata->netdev_lock, flags);
		return 0;
	}

	if (ndev)
		FUNC2(ndev);
	FUNC5(pdata->netdev, ndev);
	FUNC9(&pdata->netdev_lock, flags);

	FUNC0(pdata);
	if (old_ndev)
		FUNC3(old_ndev);

	return 0;
}