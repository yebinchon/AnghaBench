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
typedef  int /*<<< orphan*/  u8 ;
struct TYPE_2__ {int /*<<< orphan*/  s_addr; } ;
struct sockaddr_in {TYPE_1__ sin_addr; } ;
struct rtable {int /*<<< orphan*/  dst; } ;
struct qedr_dev {int dummy; } ;
struct neighbour {int nud_state; int /*<<< orphan*/  ha; } ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct qedr_dev*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct qedr_dev*,char*) ; 
 int EINVAL ; 
 scalar_t__ FUNC2 (struct rtable*) ; 
 int NUD_VALID ; 
 int /*<<< orphan*/  QEDR_MSG_QP ; 
 struct neighbour* FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  init_net ; 
 struct rtable* FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct rtable*) ; 
 int /*<<< orphan*/  FUNC7 (struct neighbour*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct neighbour*) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 () ; 

__attribute__((used)) static int
FUNC11(struct qedr_dev *dev,
		   struct sockaddr_in *src_in,
		   struct sockaddr_in *dst_in, u8 *dst_mac)
{
	__be32 src_ip = src_in->sin_addr.s_addr;
	__be32 dst_ip = dst_in->sin_addr.s_addr;
	struct neighbour *neigh = NULL;
	struct rtable *rt = NULL;
	int rc = 0;

	rt = FUNC5(&init_net, dst_ip, src_ip, 0, 0);
	if (FUNC2(rt)) {
		FUNC1(dev, "ip_route_output returned error\n");
		return -EINVAL;
	}

	neigh = FUNC3(&rt->dst, &dst_ip);

	if (neigh) {
		FUNC9();
		if (neigh->nud_state & NUD_VALID) {
			FUNC4(dst_mac, neigh->ha);
			FUNC0(dev, QEDR_MSG_QP, "mac_addr=[%pM]\n", dst_mac);
		} else {
			FUNC7(neigh, NULL);
		}
		FUNC10();
		FUNC8(neigh);
	}

	FUNC6(rt);

	return rc;
}