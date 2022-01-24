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
struct sockaddr_in6 {int /*<<< orphan*/  sin6_addr; } ;
struct TYPE_2__ {int /*<<< orphan*/  s_addr; } ;
struct sockaddr_in {TYPE_1__ sin_addr; } ;
struct sockaddr {int sa_family; } ;
struct net_device {int dummy; } ;
struct net {int dummy; } ;
struct in_device {int dummy; } ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
#define  AF_INET 129 
#define  AF_INET6 128 
 int /*<<< orphan*/  CONFIG_IPV6 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RT_SCOPE_HOST ; 
 struct net* FUNC1 (struct net_device*) ; 
 struct in_device* FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct in_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct net*,struct in_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct net*,int /*<<< orphan*/ *,struct net_device*,int) ; 

__attribute__((used)) static bool FUNC6(const struct sockaddr *addr,
					struct net_device *dev)
{
	struct net *net = FUNC1(dev);
	struct in_device *in_dev;
	struct sockaddr_in *addr_in = (struct sockaddr_in *)addr;
	struct sockaddr_in6 *addr_in6 = (struct sockaddr_in6 *)addr;
	__be32 ret_addr;

	switch (addr->sa_family) {
	case AF_INET:
		in_dev = FUNC2(dev);
		if (!in_dev)
			return false;

		ret_addr = FUNC4(net, in_dev, 0,
					     addr_in->sin_addr.s_addr,
					     RT_SCOPE_HOST);
		FUNC3(in_dev);
		if (ret_addr)
			return true;

		break;
	case AF_INET6:
		if (FUNC0(CONFIG_IPV6) &&
		    FUNC5(net, &addr_in6->sin6_addr, dev, 1))
			return true;

		break;
	}
	return false;
}