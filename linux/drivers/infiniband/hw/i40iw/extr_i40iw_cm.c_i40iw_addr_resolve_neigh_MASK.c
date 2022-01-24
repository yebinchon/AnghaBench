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
typedef  int /*<<< orphan*/  u32 ;
struct rtable {int /*<<< orphan*/  dst; } ;
struct net_device {int dummy; } ;
struct neighbour {int nud_state; int /*<<< orphan*/  ha; } ;
struct i40iw_device {TYPE_1__* arp_table; struct net_device* netdev; } ;
typedef  int /*<<< orphan*/  __be32 ;
struct TYPE_2__ {int /*<<< orphan*/  mac_addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  I40IW_ARP_ADD ; 
 int /*<<< orphan*/  I40IW_ARP_DELETE ; 
 int /*<<< orphan*/  I40IW_ARP_RESOLVE ; 
 scalar_t__ FUNC0 (struct rtable*) ; 
 int NUD_VALID ; 
 struct neighbour* FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (struct i40iw_device*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct i40iw_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  init_net ; 
 struct rtable* FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct rtable*) ; 
 int /*<<< orphan*/  FUNC9 (struct neighbour*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct neighbour*) ; 
 struct net_device* FUNC11 (struct net_device*) ; 
 scalar_t__ FUNC12 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 () ; 

__attribute__((used)) static int FUNC15(struct i40iw_device *iwdev,
				    u32 src_ip,
				    u32 dst_ip,
				    int arpindex)
{
	struct rtable *rt;
	struct neighbour *neigh;
	int rc = arpindex;
	struct net_device *netdev = iwdev->netdev;
	__be32 dst_ipaddr = FUNC3(dst_ip);
	__be32 src_ipaddr = FUNC3(src_ip);

	rt = FUNC7(&init_net, dst_ipaddr, src_ipaddr, 0, 0);
	if (FUNC0(rt)) {
		FUNC6("ip_route_output\n");
		return rc;
	}

	if (FUNC12(netdev))
		netdev = FUNC11(netdev);

	neigh = FUNC1(&rt->dst, &dst_ipaddr);

	FUNC13();
	if (neigh) {
		if (neigh->nud_state & NUD_VALID) {
			if (arpindex >= 0) {
				if (FUNC2(iwdev->arp_table[arpindex].mac_addr,
						     neigh->ha))
					/* Mac address same as arp table */
					goto resolve_neigh_exit;
				FUNC5(iwdev,
						       iwdev->arp_table[arpindex].mac_addr,
						       &dst_ip,
						       true,
						       I40IW_ARP_DELETE);
			}

			FUNC5(iwdev, neigh->ha, &dst_ip, true, I40IW_ARP_ADD);
			rc = FUNC4(iwdev, &dst_ip, true, NULL, I40IW_ARP_RESOLVE);
		} else {
			FUNC9(neigh, NULL);
		}
	}
 resolve_neigh_exit:

	FUNC14();
	if (neigh)
		FUNC10(neigh);

	FUNC8(rt);
	return rc;
}