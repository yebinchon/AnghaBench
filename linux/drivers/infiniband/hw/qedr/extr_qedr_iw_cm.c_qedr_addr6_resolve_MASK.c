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
struct sockaddr_in6 {int /*<<< orphan*/  sin6_addr; } ;
struct qedr_dev {int dummy; } ;
struct neighbour {int nud_state; int /*<<< orphan*/  ha; } ;
struct flowi6 {int /*<<< orphan*/  daddr; int /*<<< orphan*/  saddr; } ;
struct dst_entry {scalar_t__ error; } ;
typedef  int /*<<< orphan*/  fl6 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct qedr_dev*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct qedr_dev*,char*,scalar_t__) ; 
 int EINVAL ; 
 int NUD_VALID ; 
 int /*<<< orphan*/  QEDR_MSG_QP ; 
 struct neighbour* FUNC2 (struct dst_entry*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct dst_entry*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  init_net ; 
 struct dst_entry* FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct flowi6*) ; 
 int /*<<< orphan*/  FUNC6 (struct flowi6*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (struct neighbour*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct neighbour*) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 () ; 

__attribute__((used)) static int
FUNC11(struct qedr_dev *dev,
		   struct sockaddr_in6 *src_in,
		   struct sockaddr_in6 *dst_in, u8 *dst_mac)
{
	struct neighbour *neigh = NULL;
	struct dst_entry *dst;
	struct flowi6 fl6;
	int rc = 0;

	FUNC6(&fl6, 0, sizeof(fl6));
	fl6.daddr = dst_in->sin6_addr;
	fl6.saddr = src_in->sin6_addr;

	dst = FUNC5(&init_net, NULL, &fl6);

	if ((!dst) || dst->error) {
		if (dst) {
			FUNC3(dst);
			FUNC1(dev,
			       "ip6_route_output returned dst->error = %d\n",
			       dst->error);
		}
		return -EINVAL;
	}
	neigh = FUNC2(dst, &fl6.daddr);
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

	FUNC3(dst);

	return rc;
}