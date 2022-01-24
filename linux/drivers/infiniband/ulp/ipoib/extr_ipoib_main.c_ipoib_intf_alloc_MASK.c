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
typedef  int /*<<< orphan*/  u8 ;
struct net_device {int dummy; } ;
struct ib_device {int dummy; } ;

/* Variables and functions */
 struct net_device* FUNC0 (int) ; 
 scalar_t__ FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 struct net_device* FUNC3 (struct ib_device*,int /*<<< orphan*/ ,char const*) ; 
 int FUNC4 (struct ib_device*,int /*<<< orphan*/ ,char const*,struct net_device*) ; 

struct net_device *FUNC5(struct ib_device *hca, u8 port,
				    const char *name)
{
	struct net_device *dev;
	int rc;

	dev = FUNC3(hca, port, name);
	if (FUNC1(dev))
		return dev;

	rc = FUNC4(hca, port, name, dev);
	if (rc) {
		FUNC2(dev);
		return FUNC0(rc);
	}

	/*
	 * Upon success the caller must ensure ipoib_intf_free is called or
	 * register_netdevice succeed'd and priv_destructor is set to
	 * ipoib_intf_free.
	 */
	return dev;
}