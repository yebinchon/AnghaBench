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
typedef  int u32 ;
struct ib_udata {int dummy; } ;
struct ib_pd {int /*<<< orphan*/  usecnt; } ;
struct ib_gid_attr {int dummy; } ;
struct ib_ah {TYPE_2__* device; struct ib_pd* pd; struct ib_gid_attr* sgid_attr; } ;
struct TYPE_3__ {int /*<<< orphan*/  (* destroy_ah ) (struct ib_ah*,int) ;} ;
struct TYPE_4__ {TYPE_1__ ops; } ;

/* Variables and functions */
 int RDMA_DESTROY_AH_SLEEPABLE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct ib_ah*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct ib_gid_attr const*) ; 
 int /*<<< orphan*/  FUNC4 (struct ib_ah*,int) ; 

int FUNC5(struct ib_ah *ah, u32 flags, struct ib_udata *udata)
{
	const struct ib_gid_attr *sgid_attr = ah->sgid_attr;
	struct ib_pd *pd;

	FUNC2(flags & RDMA_DESTROY_AH_SLEEPABLE);

	pd = ah->pd;

	ah->device->ops.destroy_ah(ah, flags);
	FUNC0(&pd->usecnt);
	if (sgid_attr)
		FUNC3(sgid_attr);

	FUNC1(ah);
	return 0;
}