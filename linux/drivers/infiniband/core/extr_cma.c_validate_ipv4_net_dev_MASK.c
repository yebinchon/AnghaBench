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
struct TYPE_2__ {void* s_addr; } ;
struct sockaddr_in {TYPE_1__ sin_addr; } ;
struct net_device {int /*<<< orphan*/  ifindex; } ;
struct flowi4 {void* saddr; void* daddr; int /*<<< orphan*/  flowi4_iif; } ;
struct fib_result {int dummy; } ;
typedef  int /*<<< orphan*/  fl4 ;
typedef  void* __be32 ;

/* Variables and functions */
 struct net_device* FUNC0 (struct fib_result) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 
 int FUNC2 (int /*<<< orphan*/ ,struct flowi4*,struct fib_result*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (void*) ; 
 scalar_t__ FUNC4 (void*) ; 
 scalar_t__ FUNC5 (void*) ; 
 scalar_t__ FUNC6 (void*) ; 
 int /*<<< orphan*/  FUNC7 (struct flowi4*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 

__attribute__((used)) static bool FUNC10(struct net_device *net_dev,
				  const struct sockaddr_in *dst_addr,
				  const struct sockaddr_in *src_addr)
{
	__be32 daddr = dst_addr->sin_addr.s_addr,
	       saddr = src_addr->sin_addr.s_addr;
	struct fib_result res;
	struct flowi4 fl4;
	int err;
	bool ret;

	if (FUNC5(saddr) || FUNC3(saddr) ||
	    FUNC3(daddr) || FUNC6(saddr) ||
	    FUNC6(daddr) || FUNC4(daddr) ||
	    FUNC4(saddr))
		return false;

	FUNC7(&fl4, 0, sizeof(fl4));
	fl4.flowi4_iif = net_dev->ifindex;
	fl4.daddr = daddr;
	fl4.saddr = saddr;

	FUNC8();
	err = FUNC2(FUNC1(net_dev), &fl4, &res, 0);
	ret = err == 0 && FUNC0(res) == net_dev;
	FUNC9();

	return ret;
}