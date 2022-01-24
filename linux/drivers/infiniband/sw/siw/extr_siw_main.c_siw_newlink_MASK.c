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
struct siw_device {int /*<<< orphan*/  base_dev; int /*<<< orphan*/  state; } ;
struct net_device {int /*<<< orphan*/  dev; } ;
struct ib_device {int dummy; } ;

/* Variables and functions */
 int EEXIST ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  IB_PORT_ACTIVE ; 
 int /*<<< orphan*/  IB_PORT_DOWN ; 
 int /*<<< orphan*/  RDMA_DRIVER_SIW ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct ib_device* FUNC2 (struct net_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ib_device*) ; 
 scalar_t__ FUNC4 (struct net_device*) ; 
 scalar_t__ FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct net_device*) ; 
 struct siw_device* FUNC7 (struct net_device*) ; 
 int FUNC8 (struct siw_device*,char const*) ; 

__attribute__((used)) static int FUNC9(const char *basedev_name, struct net_device *netdev)
{
	struct ib_device *base_dev;
	struct siw_device *sdev = NULL;
	int rv = -ENOMEM;

	if (!FUNC6(netdev))
		return -EINVAL;

	base_dev = FUNC2(netdev, RDMA_DRIVER_SIW);
	if (base_dev) {
		FUNC3(base_dev);
		return -EEXIST;
	}
	sdev = FUNC7(netdev);
	if (sdev) {
		FUNC0(&netdev->dev, "siw: new device\n");

		if (FUNC5(netdev) && FUNC4(netdev))
			sdev->state = IB_PORT_ACTIVE;
		else
			sdev->state = IB_PORT_DOWN;

		rv = FUNC8(sdev, basedev_name);
		if (rv)
			FUNC1(&sdev->base_dev);
	}
	return rv;
}