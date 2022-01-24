#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_8__ {int /*<<< orphan*/  s6_addr; } ;
struct sockaddr_in6 {TYPE_2__ sin6_addr; } ;
struct sk_buff {int dummy; } ;
struct TYPE_7__ {scalar_t__ ss_family; } ;
struct TYPE_12__ {TYPE_5__* dev; int /*<<< orphan*/  local_addr; TYPE_1__ remote_addr; } ;
struct c4iw_ep {int /*<<< orphan*/  atid; TYPE_6__ com; } ;
struct TYPE_9__ {int /*<<< orphan*/  tids; int /*<<< orphan*/ * ports; } ;
struct TYPE_10__ {TYPE_3__ lldi; } ;
struct TYPE_11__ {TYPE_4__ rdev; int /*<<< orphan*/  atids; } ;

/* Variables and functions */
 scalar_t__ AF_INET6 ; 
 int /*<<< orphan*/  DEAD ; 
 int /*<<< orphan*/  EHOSTUNREACH ; 
 int /*<<< orphan*/  FAKE_CPL_PUT_EP_SAFE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_6__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct c4iw_ep*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (struct c4iw_ep*,struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(void *handle, struct sk_buff *skb)
{
	struct c4iw_ep *ep = handle;

	FUNC4("ARP failure during connect\n");
	FUNC1(ep, -EHOSTUNREACH);
	FUNC0(&ep->com, DEAD);
	if (ep->com.remote_addr.ss_family == AF_INET6) {
		struct sockaddr_in6 *sin6 =
			(struct sockaddr_in6 *)&ep->com.local_addr;
		FUNC2(ep->com.dev->rdev.lldi.ports[0],
				   (const u32 *)&sin6->sin6_addr.s6_addr, 1);
	}
	FUNC6(&ep->com.dev->atids, ep->atid);
	FUNC3(ep->com.dev->rdev.lldi.tids, ep->atid);
	FUNC5(ep, skb, FAKE_CPL_PUT_EP_SAFE);
}