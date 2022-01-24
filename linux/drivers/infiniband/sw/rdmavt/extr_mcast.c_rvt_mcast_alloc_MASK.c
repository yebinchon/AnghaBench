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
typedef  union ib_gid {int dummy; } ib_gid ;
typedef  int /*<<< orphan*/  u16 ;
struct TYPE_2__ {int /*<<< orphan*/  lid; union ib_gid mgid; } ;
struct rvt_mcast {int /*<<< orphan*/  refcount; int /*<<< orphan*/  wait; int /*<<< orphan*/  qp_list; TYPE_1__ mcast_addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct rvt_mcast* FUNC3 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct rvt_mcast *FUNC4(union ib_gid *mgid, u16 lid)
{
	struct rvt_mcast *mcast;

	mcast = FUNC3(sizeof(*mcast), GFP_KERNEL);
	if (!mcast)
		goto bail;

	mcast->mcast_addr.mgid = *mgid;
	mcast->mcast_addr.lid = lid;

	FUNC0(&mcast->qp_list);
	FUNC2(&mcast->wait);
	FUNC1(&mcast->refcount, 0);

bail:
	return mcast;
}