#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_4__ {int /*<<< orphan*/  u6_addr32; } ;
struct TYPE_5__ {TYPE_1__ in6_u; } ;
struct sockaddr_in6 {TYPE_2__ sin6_addr; void* sin6_family; } ;
struct net_device {int dummy; } ;
struct neighbour {int nud_state; int /*<<< orphan*/  ha; } ;
struct i40iw_device {TYPE_3__* arp_table; int /*<<< orphan*/  sc_dev; struct net_device* netdev; } ;
struct dst_entry {scalar_t__ error; } ;
typedef  int /*<<< orphan*/  src_addr ;
typedef  int /*<<< orphan*/  dst_addr ;
struct TYPE_6__ {int /*<<< orphan*/  mac_addr; } ;

/* Variables and functions */
 void* AF_INET6 ; 
 int /*<<< orphan*/  I40IW_ARP_ADD ; 
 int /*<<< orphan*/  I40IW_ARP_DELETE ; 
 int /*<<< orphan*/  I40IW_ARP_RESOLVE ; 
 int /*<<< orphan*/  I40IW_DEBUG_CM ; 
 int NUD_VALID ; 
 struct neighbour* FUNC0 (struct dst_entry*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct dst_entry*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct i40iw_device*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 struct dst_entry* FUNC6 (struct sockaddr_in6*,struct sockaddr_in6*) ; 
 int /*<<< orphan*/  FUNC7 (struct i40iw_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (struct sockaddr_in6*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (struct neighbour*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (struct neighbour*) ; 
 struct net_device* FUNC12 (struct net_device*) ; 
 scalar_t__ FUNC13 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC14 () ; 
 int /*<<< orphan*/  FUNC15 () ; 

__attribute__((used)) static int FUNC16(struct i40iw_device *iwdev,
					 u32 *src,
					 u32 *dest,
					 int arpindex)
{
	struct neighbour *neigh;
	int rc = arpindex;
	struct net_device *netdev = iwdev->netdev;
	struct dst_entry *dst;
	struct sockaddr_in6 dst_addr;
	struct sockaddr_in6 src_addr;

	FUNC9(&dst_addr, 0, sizeof(dst_addr));
	dst_addr.sin6_family = AF_INET6;
	FUNC4(dst_addr.sin6_addr.in6_u.u6_addr32, dest);
	FUNC9(&src_addr, 0, sizeof(src_addr));
	src_addr.sin6_family = AF_INET6;
	FUNC4(src_addr.sin6_addr.in6_u.u6_addr32, src);
	dst = FUNC6(&src_addr, &dst_addr);
	if (!dst || dst->error) {
		if (dst) {
			FUNC1(dst);
			FUNC8("ip6_route_output returned dst->error = %d\n",
				     dst->error);
		}
		return rc;
	}

	if (FUNC13(netdev))
		netdev = FUNC12(netdev);

	neigh = FUNC0(dst, dst_addr.sin6_addr.in6_u.u6_addr32);

	FUNC14();
	if (neigh) {
		FUNC5(&iwdev->sc_dev, I40IW_DEBUG_CM, "dst_neigh_lookup MAC=%pM\n", neigh->ha);
		if (neigh->nud_state & NUD_VALID) {
			if (arpindex >= 0) {
				if (FUNC2
				    (iwdev->arp_table[arpindex].mac_addr,
				     neigh->ha)) {
					/* Mac address same as in arp table */
					goto resolve_neigh_exit6;
				}
				FUNC7(iwdev,
						       iwdev->arp_table[arpindex].mac_addr,
						       dest,
						       false,
						       I40IW_ARP_DELETE);
			}
			FUNC7(iwdev,
					       neigh->ha,
					       dest,
					       false,
					       I40IW_ARP_ADD);
			rc = FUNC3(iwdev,
					     dest,
					     false,
					     NULL,
					     I40IW_ARP_RESOLVE);
		} else {
			FUNC10(neigh, NULL);
		}
	}

 resolve_neigh_exit6:
	FUNC15();
	if (neigh)
		FUNC11(neigh);
	FUNC1(dst);
	return rc;
}