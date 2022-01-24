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
typedef  scalar_t__ u64 ;
struct ocrdma_ucontext {int dummy; } ;
struct ocrdma_pd {int id; struct ocrdma_ucontext* uctx; scalar_t__ dpp_enabled; } ;
struct TYPE_2__ {int db_page_size; scalar_t__ dpp_unmapped_addr; } ;
struct ocrdma_dev {TYPE_1__ nic_info; } ;
struct ib_udata {int dummy; } ;
struct ib_pd {int /*<<< orphan*/  device; } ;

/* Variables and functions */
 int PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (struct ocrdma_dev*,struct ocrdma_pd*) ; 
 struct ocrdma_dev* FUNC1 (int /*<<< orphan*/ ) ; 
 struct ocrdma_pd* FUNC2 (struct ib_pd*) ; 
 scalar_t__ FUNC3 (struct ocrdma_ucontext*,struct ocrdma_pd*) ; 
 int /*<<< orphan*/  FUNC4 (struct ocrdma_ucontext*,scalar_t__,int) ; 
 scalar_t__ FUNC5 (struct ocrdma_dev*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct ocrdma_ucontext*) ; 

void FUNC7(struct ib_pd *ibpd, struct ib_udata *udata)
{
	struct ocrdma_pd *pd = FUNC2(ibpd);
	struct ocrdma_dev *dev = FUNC1(ibpd->device);
	struct ocrdma_ucontext *uctx = NULL;
	u64 usr_db;

	uctx = pd->uctx;
	if (uctx) {
		u64 dpp_db = dev->nic_info.dpp_unmapped_addr +
			(pd->id * PAGE_SIZE);
		if (pd->dpp_enabled)
			FUNC4(pd->uctx, dpp_db, PAGE_SIZE);
		usr_db = FUNC5(dev, pd->id);
		FUNC4(pd->uctx, usr_db, dev->nic_info.db_page_size);

		if (FUNC3(uctx, pd)) {
			FUNC6(uctx);
			return;
		}
	}
	FUNC0(dev, pd);
}