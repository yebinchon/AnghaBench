#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  union ib_gid {int dummy; } ib_gid ;
struct sk_buff {scalar_t__ protocol; int /*<<< orphan*/  dev; } ;
struct rxe_dev {int /*<<< orphan*/  ib_dev; } ;
struct in6_addr {int dummy; } ;
struct ib_gid_attr {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  daddr; } ;
struct TYPE_3__ {int /*<<< orphan*/  daddr; } ;

/* Variables and functions */
 int /*<<< orphan*/  ETH_P_IP ; 
 int /*<<< orphan*/  IB_GID_TYPE_ROCE_UDP_ENCAP ; 
 scalar_t__ FUNC0 (struct ib_gid_attr const*) ; 
 int FUNC1 (struct ib_gid_attr const*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC3 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct in6_addr*) ; 
 TYPE_1__* FUNC5 (struct sk_buff*) ; 
 struct ib_gid_attr* FUNC6 (int /*<<< orphan*/ *,union ib_gid*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct ib_gid_attr const*) ; 

__attribute__((used)) static int FUNC8(struct rxe_dev *rxe, struct sk_buff *skb)
{
	const struct ib_gid_attr *gid_attr;
	union ib_gid dgid;
	union ib_gid *pdgid;

	if (skb->protocol == FUNC2(ETH_P_IP)) {
		FUNC4(FUNC3(skb)->daddr,
				       (struct in6_addr *)&dgid);
		pdgid = &dgid;
	} else {
		pdgid = (union ib_gid *)&FUNC5(skb)->daddr;
	}

	gid_attr = FUNC6(&rxe->ib_dev, pdgid,
					 IB_GID_TYPE_ROCE_UDP_ENCAP,
					 1, skb->dev);
	if (FUNC0(gid_attr))
		return FUNC1(gid_attr);

	FUNC7(gid_attr);
	return 0;
}