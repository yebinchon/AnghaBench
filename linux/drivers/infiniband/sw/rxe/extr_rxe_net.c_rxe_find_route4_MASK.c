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
struct dst_entry {int dummy; } ;
struct rtable {struct dst_entry dst; } ;
struct net_device {int /*<<< orphan*/  ifindex; } ;
struct in_addr {int /*<<< orphan*/  s_addr; } ;
struct TYPE_2__ {int /*<<< orphan*/  member_0; } ;
struct flowi4 {int /*<<< orphan*/  flowi4_proto; int /*<<< orphan*/  daddr; int /*<<< orphan*/  saddr; int /*<<< orphan*/  flowi4_oif; TYPE_1__ member_0; } ;
typedef  int /*<<< orphan*/  fl ;

/* Variables and functions */
 int /*<<< orphan*/  IPPROTO_UDP ; 
 scalar_t__ FUNC0 (struct rtable*) ; 
 int /*<<< orphan*/  init_net ; 
 struct rtable* FUNC1 (int /*<<< orphan*/ *,struct flowi4*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct in_addr*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct flowi4*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct dst_entry *FUNC5(struct net_device *ndev,
				  struct in_addr *saddr,
				  struct in_addr *daddr)
{
	struct rtable *rt;
	struct flowi4 fl = { 0 };

	FUNC3(&fl, 0, sizeof(fl));
	fl.flowi4_oif = ndev->ifindex;
	FUNC2(&fl.saddr, saddr, sizeof(*saddr));
	FUNC2(&fl.daddr, daddr, sizeof(*daddr));
	fl.flowi4_proto = IPPROTO_UDP;

	rt = FUNC1(&init_net, &fl);
	if (FUNC0(rt)) {
		FUNC4("no route to %pI4\n", &daddr->s_addr);
		return NULL;
	}

	return &rt->dst;
}