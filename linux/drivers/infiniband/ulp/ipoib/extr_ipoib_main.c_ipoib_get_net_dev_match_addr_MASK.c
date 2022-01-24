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
struct sockaddr {int dummy; } ;
struct net_device {int dummy; } ;
struct ipoib_walk_data {struct net_device* result; struct sockaddr const* addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct net_device*) ; 
 scalar_t__ FUNC1 (struct sockaddr const*,struct net_device*) ; 
 int /*<<< orphan*/  ipoib_upper_walk ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*,int /*<<< orphan*/ ,struct ipoib_walk_data*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 

__attribute__((used)) static struct net_device *FUNC5(
		const struct sockaddr *addr, struct net_device *dev)
{
	struct ipoib_walk_data data = {
		.addr = addr,
	};

	FUNC3();
	if (FUNC1(addr, dev)) {
		FUNC0(dev);
		data.result = dev;
		goto out;
	}

	FUNC2(dev, ipoib_upper_walk, &data);
out:
	FUNC4();
	return data.result;
}